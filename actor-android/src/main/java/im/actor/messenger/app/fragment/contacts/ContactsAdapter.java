package im.actor.messenger.app.fragment.contacts;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import java.util.HashSet;

import im.actor.messenger.app.view.OnItemClickedListener;
import im.actor.model.android.view.BindedListAdapter;
import im.actor.model.entity.Contact;
import im.actor.model.mvvm.BindedDisplayList;

public class ContactsAdapter extends BindedListAdapter<Contact, ContactHolder> {

    private final HashSet<Integer> selectedUsers = new HashSet<Integer>();

    private final OnItemClickedListener<Contact> onItemClickedListener;

    private boolean selectable;

    private final Context context;

    private String query = "";

    public ContactsAdapter(BindedDisplayList<Contact> displayList, Context context, boolean selectable,
                           OnItemClickedListener<Contact> onItemClickedListener) {
        super(displayList);
        this.context = context;
        this.selectable = selectable;
        this.onItemClickedListener = onItemClickedListener;
    }

    public void setQuery(String query) {
        this.query = query;
        notifyDataSetChanged();
    }

    public void select(int uid) {
        selectedUsers.add(uid);
    }

    public void unselect(int uid) {
        selectedUsers.remove(uid);
    }

    public Integer[] getSelected() {
        return selectedUsers.toArray(new Integer[selectedUsers.size()]);
    }

    public boolean isSelected(int uid) {
        return selectedUsers.contains(uid);
    }

    public int getSelectedCount() {
        return selectedUsers.size();
    }

    @Override
    public void onBindViewHolder(ContactHolder contactHolder, int index, Contact item) {
        contactHolder.bind(item, query, selectedUsers.contains(item.getUid()));
    }

    @Override
    public ContactHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        return new ContactHolder(new FrameLayout(context), selectable, context, onItemClickedListener);
    }
}