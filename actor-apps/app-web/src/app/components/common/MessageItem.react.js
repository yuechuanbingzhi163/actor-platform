import _ from 'lodash';

import React from 'react';
import { PureRenderMixin } from 'react/addons';

import memoize from 'memoizee';
import classNames from 'classnames';
import emojify from 'emojify.js';
import hljs from 'highlight.js';
import marked from 'marked';
import emojiCharacters from 'emoji-named-characters';
import Lightbox from 'jsonlylightbox';

import VisibilitySensor from 'react-visibility-sensor';

import AvatarItem from './AvatarItem.react';

import DialogActionCreators from '../../actions/DialogActionCreators';

var MessageItem = React.createClass({
  displayName: 'MessageItem',

  propTypes: {
    message: React.PropTypes.object.isRequired,
    onVisibilityChange: React.PropTypes.func
  },

  mixins: [PureRenderMixin],

  _onClick: function() {
    DialogActionCreators.selectDialogPeerUser(this.props.message.sender.peer.id);
  },

  _onVisibilityChange: function(isVisible) {
    this.props.onVisibilityChange(this.props.message, isVisible);
  },


  render: function() {
    let message = this.props.message;

    let avatar = (
      <a onClick={this._onClick}>
        <AvatarItem image={message.sender.avatar}
                    placeholder={message.sender.placeholder}
                    size="small"
                    title={message.sender.title}/>
      </a>
    );

    let header = (
      <header className="message__header">
        <h3 className="message__sender">
          <a onClick={this._onClick}>{message.sender.title}</a>
        </h3>
        <time className="message__timestamp">{message.date}</time>
        <MessageItem.State message={message}/>
      </header>
    );

    if (message.content.content === 'service') {
      avatar = null;
      header = null;
    }

    let visibilitySensor;

    if (this.props.onVisibilityChange) {
      visibilitySensor = <VisibilitySensor onChange={this._onVisibilityChange}/>;
    }

    return (
      <li className="message row">
        {avatar}
        <div className="message__body col-xs">
          {header}
          <MessageItem.Content content={message.content}/>
          {visibilitySensor}
        </div>
      </li>
    );
  }

});


emojify.setConfig({
  mode: 'img',
  img_dir: '/assets/img/emoji' // eslint-disable-line
});

const mdRenderer = new marked.Renderer();
mdRenderer.link = function(href, title, text) {
  let external, newWindow, out;
  external = /^https?:\/\/.+$/.test(href);
  newWindow = external || title === 'newWindow';
  out = '<a href=\"' + href + '\"';
  if (newWindow) {
    out += ' target="_blank"';
  }
  if (title && title !== 'newWindow') {
    out += ' title=\"' + title + '\"';
  }
  return (out + '>' + text + '</a>');
};

const markedOptions = {
  sanitize: true,
    breaks: true,
    highlight: function (code) {
    return hljs.highlightAuto(code).value;
  },
  renderer: mdRenderer
};


const inversedEmojiCharacters = _.invert(_.mapValues(emojiCharacters, (e) => e.character));

const emojiVariants = _.map(Object.keys(inversedEmojiCharacters), function(name) {
  return name.replace(/\+/g, '\\+');
});

const emojiRegexp = new RegExp('(' + emojiVariants.join('|') + ')', 'gi');

const processText = function(text) {
  let markedText = marked(text, markedOptions);

  // need hack with replace because of https://github.com/Ranks/emojify.js/issues/127
  const noPTag = markedText.replace(/<p>/g, '<p> ');

  let emojifiedText = emojify
    .replace(noPTag.replace(emojiRegexp, (match) => ':' + inversedEmojiCharacters[match] + ':'));

  return emojifiedText;
};

const memoizedProcessText = memoize(processText, {
    length: 1000,
    maxAge: 60 * 60 * 1000,
    max: 10000
});

const lightbox = new Lightbox();
const lightboxOptions = {
  animation: false,
  controlClose: '<i class="material-icons">close</i>'
};
lightbox.load(lightboxOptions);

MessageItem.Content = React.createClass({
  propTypes: {
    content: React.PropTypes.object.isRequired
  },

  mixins: [PureRenderMixin],

  getInitialState: function() {
    return {
      isImageLoaded: false
    };
  },

  render: function() {
    let content = this.props.content;
    let isImageLoaded = this.state.isImageLoaded;
    let contentClassName = classNames('message__content', {
      'message__content--service': content.content === 'service',
      'message__content--text': content.content === 'text',
      'message__content--photo': content.content === 'photo',
      'message__content--photo--loaded': isImageLoaded,
      'message__content--document': content.content === 'document',
      'message__content--unsupported': content.content === 'unsupported'
    });

    switch (content.content) {
      case 'service':
        return (
          <div className={contentClassName}>
            {content.text}
          </div>
        );
      case 'text':
        return (
          <div className={contentClassName}
               dangerouslySetInnerHTML={{__html: memoizedProcessText(content.text)}}>
          </div>
        );
      case 'photo':
        let original = null;
        let preview = <img className="photo photo--preview" src={content.preview}/>;

        if (content.fileUrl) {
          original = (
            <img className="photo photo--original"
                 height={content.h}
                 onClick={this._openLightBox}
                 onLoad={this._imageLoaded}
                 src={content.fileUrl}
                 width={content.w}/>
          );
        }

        let k = content.w / 300;
        let photoMessageStyes = {
          width: Math.round(content.w / k),
          height: Math.round(content.h / k)
        };

        let preloader;
        if (content.isUploading === true || isImageLoaded === false) {
          preloader =
            <div className="preloader"><div></div><div></div><div></div><div></div><div></div></div>;
        }

        return (
          <div className={contentClassName} style={photoMessageStyes}>
            {preview}
            {original}
            {preloader}
            <svg dangerouslySetInnerHTML={{__html: '<filter id="blur-effect"><feGaussianBlur stdDeviation="3"/></filter>'}}></svg>
          </div>
        );
      case 'document':
        contentClassName = classNames(contentClassName, 'row');

        let availableActions;
        if (content.isUploading === true) {
          availableActions = <span>Loading...</span>;
        } else {
          availableActions = <a href={content.fileUrl}>Open</a>;
        }

        return (
          <div className={contentClassName}>
            <div className="document row">
              <div className="document__icon">
                <i className="material-icons">attach_file</i>
              </div>
              <div className="col-xs">
                <span className="document__filename">{content.fileName}</span>
                <div className="document__meta">
                  <span className="document__meta__size">{content.fileSize}</span>
                  <span className="document__meta__ext">{content.fileExtension}</span>
                </div>
                <div className="document__actions">
                  {availableActions}
                </div>
              </div>
            </div>
            <div className="col-xs"></div>
          </div>
        );
      default:
    }
  },

  _imageLoaded: function() {
    this.setState({isImageLoaded: true});
  },

  _openLightBox() {
    lightbox.open(this.props.content.fileUrl);
  }
});

MessageItem.State = React.createClass({
  propTypes: {
    message: React.PropTypes.object.isRequired
  },
  render: function() {
    let message = this.props.message;

    if (message.content.content === 'service') {
      return null;
    } else {
      let icon = null;

      switch(message.state) {
        case 'pending':
          icon = <i className="status status--penging material-icons">access_time</i>;
          break;
        case 'sent':
          icon = <i className="status status--sent material-icons">done</i>;
          break;
        case 'received':
          icon = <i className="status status--received material-icons">done_all</i>;
          break;
        case 'read':
          icon = <i className="status status--read material-icons">done_all</i>;
          break;
        case 'error':
          icon = <i className="status status--error material-icons">report_problem</i>;
          break;
        default:

      }

      return (
        <div className="message__status">{icon}</div>
      );
    }
  }
});

export default MessageItem;