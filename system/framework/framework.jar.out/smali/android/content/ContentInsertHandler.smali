.class public interface abstract Landroid/content/ContentInsertHandler;
.super Ljava/lang/Object;
.source "ContentInsertHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# virtual methods
.method public abstract insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
