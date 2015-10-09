.class public final Landroid/R$animator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "animator"
.end annotation


# static fields
.field public static fade_in:I

.field public static fade_out:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x10b0000

    sput v0, Landroid/R$animator;->fade_in:I

    .line 36
    const v0, 0x10b0001

    sput v0, Landroid/R$animator;->fade_out:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
