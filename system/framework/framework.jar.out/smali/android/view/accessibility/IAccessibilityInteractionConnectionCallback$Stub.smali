.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

.field static final TRANSACTION_setFindAccessibilityNodeInfoResult:I = 0x1

.field static final TRANSACTION_setFindAccessibilityNodeInfosResult:I = 0x2

.field static final TRANSACTION_setPerformAccessibilityActionResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
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
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 62
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_2
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    goto :goto_0

    .line 78
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 82
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPerformAccessibilityActionResult(ZI)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
