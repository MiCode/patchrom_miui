.class public abstract Landroid/location/ILocationPolicyManager$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicyManager.java"

# interfaces
.implements Landroid/location/ILocationPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationPolicyManager"

.field static final TRANSACTION_checkUidNavigationScreenLock:I = 0x6

.field static final TRANSACTION_getLocationPolicies:I = 0xb

.field static final TRANSACTION_getRestrictBackground:I = 0xd

.field static final TRANSACTION_getUidPolicy:I = 0x2

.field static final TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_setLocationPolicies:I = 0xa

.field static final TRANSACTION_setRestrictBackground:I = 0xc

.field static final TRANSACTION_setUidNavigationStart:I = 0x4

.field static final TRANSACTION_setUidNavigationStop:I = 0x5

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.location.ILocationPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationPolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationPolicyManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/ILocationPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/location/ILocationPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidPolicy(I)I

    move-result v2

    .line 67
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v2

    .line 77
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_4
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStart(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStop(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v5, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->checkUidNavigationScreenLock(I)Z

    move-result v2

    .line 105
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v5, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->isUidForeground(I)Z

    move-result v2

    .line 115
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v0

    .line 124
    .local v0, "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->registerListener(Landroid/location/ILocationPolicyListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    :sswitch_9
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->unregisterListener(Landroid/location/ILocationPolicyListener;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    :sswitch_a
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    sget-object v3, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationPolicy;

    .line 142
    .local v0, "_arg0":[Landroid/location/LocationPolicy;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setLocationPolicies([Landroid/location/LocationPolicy;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":[Landroid/location/LocationPolicy;
    :sswitch_b
    const-string v3, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v2

    .line 150
    .local v2, "_result":[Landroid/location/LocationPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 156
    .end local v2    # "_result":[Landroid/location/LocationPolicy;
    :sswitch_c
    const-string v5, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 159
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2
    move v0, v3

    .line 158
    goto :goto_1

    .line 165
    :sswitch_d
    const-string v5, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getRestrictBackground()Z

    move-result v2

    .line 167
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
