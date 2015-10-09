.class public abstract Landroid/os/storage/OnObbStateChangeListener;
.super Ljava/lang/Object;
.source "OnObbStateChangeListener.java"


# static fields
.field public static final ERROR_ALREADY_MOUNTED:I = 0x18

.field public static final ERROR_COULD_NOT_MOUNT:I = 0x15

.field public static final ERROR_COULD_NOT_UNMOUNT:I = 0x16

.field public static final ERROR_INTERNAL:I = 0x14

.field public static final ERROR_NOT_MOUNTED:I = 0x17

.field public static final ERROR_PERMISSION_DENIED:I = 0x19

.field public static final MOUNTED:I = 0x1

.field public static final UNMOUNTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObbStateChange(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 84
    return-void
.end method
