.class public final Landroid/R$mipmap;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "mipmap"
.end annotation


# static fields
.field public static sym_def_app_icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11283
    const/high16 v0, 0x10d0000

    sput v0, Landroid/R$mipmap;->sym_def_app_icon:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
