.class final Landroid/app/ActivityThread$RequestAssistContextExtras;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestAssistContextExtras"
.end annotation


# instance fields
.field activityToken:Landroid/os/IBinder;

.field requestToken:Landroid/os/IBinder;

.field requestType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
