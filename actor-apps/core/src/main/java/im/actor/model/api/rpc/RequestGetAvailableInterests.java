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

public class RequestGetAvailableInterests extends Request<ResponseGetAvailableInterests> {

    public static final int HEADER = 0x98;
    public static RequestGetAvailableInterests fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestGetAvailableInterests(), data);
    }


    public RequestGetAvailableInterests() {

    }

    @Override
    public void parse(BserValues values) throws IOException {
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
    }

    @Override
    public String toString() {
        String res = "rpc GetAvailableInterests{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
