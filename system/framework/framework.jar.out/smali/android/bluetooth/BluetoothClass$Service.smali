.class public final Landroid/bluetooth/BluetoothClass$Service;
.super Ljava/lang/Object;
.source "BluetoothClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation


# static fields
.field public static final AUDIO:I = 0x200000

.field private static final BITMASK:I = 0xffe000

.field public static final CAPTURE:I = 0x80000

.field public static final INFORMATION:I = 0x800000

.field public static final LIMITED_DISCOVERABILITY:I = 0x2000

.field public static final NETWORKING:I = 0x20000

.field public static final OBJECT_TRANSFER:I = 0x100000

.field public static final POSITIONING:I = 0x10000

.field public static final RENDER:I = 0x40000

.field public static final TELEPHONY:I = 0x400000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
