package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

public class DocumentExPhoto extends DocumentEx {

    private int w;
    private int h;

    public DocumentExPhoto(int w, int h) {
        this.w = w;
        this.h = h;
    }

    public DocumentExPhoto() {

    }

    public int getHeader() {
        return 1;
    }

    public int getW() {
        return this.w;
    }

    public int getH() {
        return this.h;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.w = values.getInt(1);
        this.h = values.getInt(2);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.w);
        writer.writeInt(2, this.h);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct DocumentExPhoto{";
        res += "w=" + this.w;
        res += ", h=" + this.h;
        res += "}";
        return res;
    }

}
