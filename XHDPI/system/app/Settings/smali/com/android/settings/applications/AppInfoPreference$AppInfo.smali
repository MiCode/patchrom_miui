.class public Lcom/android/settings/applications/AppInfoPreference$AppInfo;
.super Ljava/lang/Object;
.source "AppInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppInfoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public mAppVersion:Ljava/lang/String;

.field public mAppVersionVisible:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "icon"
    .parameter "label"
    .parameter "appVersion"
    .parameter "appVersionVisible"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p2, p0, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mLabel:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mAppVersion:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/android/settings/applications/AppInfoPreference$AppInfo;->mAppVersionVisible:Z

    .line 28
    return-void
.end method
