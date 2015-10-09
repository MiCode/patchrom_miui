.class Landroid/net/http/IdleCache$Entry;
.super Ljava/lang/Object;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field mHost:Lorg/apache/http/HttpHost;

.field mTimeout:J

.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Landroid/net/http/IdleCache$Entry;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
