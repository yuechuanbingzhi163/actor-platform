package im.actor.model.api.updates;
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

public class UpdateUserNameChanged extends Update {

    public static final int HEADER = 0x20;
    public static UpdateUserNameChanged fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateUserNameChanged(), data);
    }

    private int uid;
    private String name;

    public UpdateUserNameChanged(int uid, @NotNull String name) {
        this.uid = uid;
        this.name = name;
    }

    public UpdateUserNameChanged() {

    }

    public int getUid() {
        return this.uid;
    }

    @NotNull
    public String getName() {
        return this.name;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
        this.name = values.getString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
        if (this.name == null) {
            throw new IOException();
        }
        writer.writeString(2, this.name);
    }

    @Override
    public String toString() {
        String res = "update UserNameChanged{";
        res += "uid=" + this.uid;
        res += ", name=" + this.name;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
