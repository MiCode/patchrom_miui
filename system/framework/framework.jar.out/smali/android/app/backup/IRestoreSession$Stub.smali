.class public abstract Landroid/app/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreSession"

.field static final TRANSACTION_endRestoreSession:I = 0x5

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final TRANSACTION_restoreAll:I = 0x2

.field static final TRANSACTION_restorePackage:I = 0x4

.field static final TRANSACTION_restoreSome:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.backup.IRestoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.app.backup.IRestoreSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IRestoreSession;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/app/backup/IRestoreSession;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/app/backup/IRestoreSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v4

    .line 57
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Landroid/app/backup/IRestoreObserver;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 67
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v2

    .line 68
    .local v2, "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/backup/IRestoreSession$Stub;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v4

    .line 69
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 79
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v2

    .line 81
    .restart local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/backup/IRestoreSession$Stub;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I

    move-result v4

    .line 83
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    invoke-virtual {p0, v0, v2}, Landroid/app/backup/IRestoreSession$Stub;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    move-result v4

    .line 95
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/backup/IRestoreObserver;
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/backup/IRestoreSession$Stub;->endRestoreSession()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
