.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private final mSelfChange:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;)V
    .locals 0
    .param p2, "selfChange"    # Z
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-boolean p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    .line 175
    iput-object p3, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-boolean v1, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelfChange:Z

    iget-object v2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 181
    return-void
.end method
