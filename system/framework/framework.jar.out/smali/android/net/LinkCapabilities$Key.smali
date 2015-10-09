.class public final Landroid/net/LinkCapabilities$Key;
.super Ljava/lang/Object;
.source "LinkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final RO_AVAILABLE_FWD_BW:I = 0x4

.field public static final RO_AVAILABLE_REV_BW:I = 0x7

.field public static final RO_BOUND_INTERFACE:I = 0x9

.field public static final RO_NETWORK_TYPE:I = 0x1

.field public static final RO_PHYSICAL_INTERFACE:I = 0xa

.field public static final RW_DESIRED_FWD_BW:I = 0x2

.field public static final RW_DESIRED_REV_BW:I = 0x5

.field public static final RW_MAX_ALLOWED_LATENCY:I = 0x8

.field public static final RW_REQUIRED_FWD_BW:I = 0x3

.field public static final RW_REQUIRED_REV_BW:I = 0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
