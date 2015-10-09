.class public interface abstract Landroid/nfc/tech/TagTechnology;
.super Ljava/lang/Object;
.source "TagTechnology.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ISO_DEP:I = 0x3

.field public static final MIFARE_CLASSIC:I = 0x8

.field public static final MIFARE_ULTRALIGHT:I = 0x9

.field public static final NDEF:I = 0x6

.field public static final NDEF_FORMATABLE:I = 0x7

.field public static final NFC_A:I = 0x1

.field public static final NFC_B:I = 0x2

.field public static final NFC_BARCODE:I = 0xa

.field public static final NFC_F:I = 0x4

.field public static final NFC_V:I = 0x5


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTag()Landroid/nfc/Tag;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
