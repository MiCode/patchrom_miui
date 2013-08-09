.class Lcom/android/settings/applications/RunningState$UserState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserState"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mInfo:Landroid/content/pm/UserInfo;

.field mLabel:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
