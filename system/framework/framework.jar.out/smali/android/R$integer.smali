.class public final Landroid/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static config_longAnimTime:I

.field public static config_mediumAnimTime:I

.field public static config_shortAnimTime:I

.field public static status_bar_notification_info_maxnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11178
    const v0, 0x10e0002

    sput v0, Landroid/R$integer;->config_longAnimTime:I

    .line 11181
    const v0, 0x10e0001

    sput v0, Landroid/R$integer;->config_mediumAnimTime:I

    .line 11184
    const/high16 v0, 0x10e0000

    sput v0, Landroid/R$integer;->config_shortAnimTime:I

    .line 11190
    const v0, 0x10e0003

    sput v0, Landroid/R$integer;->status_bar_notification_info_maxnum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
