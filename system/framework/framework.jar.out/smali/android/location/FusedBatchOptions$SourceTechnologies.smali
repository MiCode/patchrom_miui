.class public final Landroid/location/FusedBatchOptions$SourceTechnologies;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceTechnologies"
.end annotation


# static fields
.field public static BLUETOOTH:I

.field public static CELL:I

.field public static GNSS:I

.field public static SENSORS:I

.field public static WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 91
    const/4 v0, 0x2

    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->WIFI:I

    .line 92
    const/4 v0, 0x4

    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->SENSORS:I

    .line 93
    const/16 v0, 0x8

    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->CELL:I

    .line 94
    const/16 v0, 0x10

    sput v0, Landroid/location/FusedBatchOptions$SourceTechnologies;->BLUETOOTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
