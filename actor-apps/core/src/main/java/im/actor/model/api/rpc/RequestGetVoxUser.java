package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import im.actor.model.network.parser.*;
import im.actor.model.api.*;

public class RequestGetVoxUser extends Request<ResponseGetVoxUser> {

    public static final int HEADER = 0x83;
    public static RequestGetVoxUser fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestGetVoxUser(), data);
    }

    private UserOutPeer userPeer;

    public RequestGetVoxUser(@NotNull UserOutPeer userPeer) {
        this.userPeer = userPeer;
    }

    public RequestGetVoxUser() {

    }

    @NotNull
    public UserOutPeer getUserPeer() {
        return this.userPeer;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.userPeer = values.getObj(1, new UserOutPeer());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.userPeer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.userPeer);
    }

    @Override
    public String toString() {
        String res = "rpc GetVoxUser{";
        res += "userPeer=" + this.userPeer;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
