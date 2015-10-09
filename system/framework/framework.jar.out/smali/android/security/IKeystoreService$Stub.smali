.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.keystore"

.field static final TRANSACTION_clear_uid:I = 0x17

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_del_key:I = 0x11

.field static final TRANSACTION_duplicate:I = 0x15

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x14

.field static final TRANSACTION_grant:I = 0x12

.field static final TRANSACTION_import:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_is_hardware_backed:I = 0x16

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_password:I = 0x8

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_saw:I = 0x6

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_test:I = 0x1

.field static final TRANSACTION_ungrant:I = 0x13

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_verify:I = 0xf

.field static final TRANSACTION_zero:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 526
    const-string v0, "android.security.keystore"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 514
    if-nez p0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 521
    :goto_0
    return-object v0

    .line 517
    :cond_0
    const-string v1, "android.security.keystore"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 518
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    .line 519
    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 530
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 536
    sparse-switch p1, :sswitch_data_0

    .line 549
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 538
    :sswitch_0
    const-string v2, "android.security.keystore"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :sswitch_1
    const-string v2, "android.security.keystore"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Landroid/security/IKeystoreService$Stub;->test()I

    move-result v0

    .line 544
    .local v0, "resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 536
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
