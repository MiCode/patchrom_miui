.class interface abstract Landroid/net/http/RequestQueue$ConnectionManager;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ConnectionManager"
.end annotation


# virtual methods
.method public abstract getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
.end method

.method public abstract getProxyHost()Lorg/apache/http/HttpHost;
.end method

.method public abstract recycleConnection(Landroid/net/http/Connection;)Z
.end method
