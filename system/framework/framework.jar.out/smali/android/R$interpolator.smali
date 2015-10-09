.class public final Landroid/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static accelerate_cubic:I

.field public static accelerate_decelerate:I

.field public static accelerate_quad:I

.field public static accelerate_quint:I

.field public static anticipate:I

.field public static anticipate_overshoot:I

.field public static bounce:I

.field public static cycle:I

.field public static decelerate_cubic:I

.field public static decelerate_quad:I

.field public static decelerate_quint:I

.field public static linear:I

.field public static overshoot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11195
    const v0, 0x10c0002

    sput v0, Landroid/R$interpolator;->accelerate_cubic:I

    .line 11198
    const v0, 0x10c0006

    sput v0, Landroid/R$interpolator;->accelerate_decelerate:I

    .line 11201
    const/high16 v0, 0x10c0000

    sput v0, Landroid/R$interpolator;->accelerate_quad:I

    .line 11204
    const v0, 0x10c0004

    sput v0, Landroid/R$interpolator;->accelerate_quint:I

    .line 11207
    const v0, 0x10c0007

    sput v0, Landroid/R$interpolator;->anticipate:I

    .line 11211
    const v0, 0x10c0009

    sput v0, Landroid/R$interpolator;->anticipate_overshoot:I

    .line 11214
    const v0, 0x10c000a

    sput v0, Landroid/R$interpolator;->bounce:I

    .line 11218
    const v0, 0x10c000c

    sput v0, Landroid/R$interpolator;->cycle:I

    .line 11221
    const v0, 0x10c0003

    sput v0, Landroid/R$interpolator;->decelerate_cubic:I

    .line 11224
    const v0, 0x10c0001

    sput v0, Landroid/R$interpolator;->decelerate_quad:I

    .line 11227
    const v0, 0x10c0005

    sput v0, Landroid/R$interpolator;->decelerate_quint:I

    .line 11230
    const v0, 0x10c000b

    sput v0, Landroid/R$interpolator;->linear:I

    .line 11234
    const v0, 0x10c0008

    sput v0, Landroid/R$interpolator;->overshoot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
