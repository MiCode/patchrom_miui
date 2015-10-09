.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getWindowId:I = 0x1b

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1a

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDeferredDestroy:I = 0x7

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x17

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setUniverseTransform:I = 0x19

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x18

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
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
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 615
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 56
    .local v2, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v4, "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 67
    .local v5, "_arg3":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v6, "_arg4":Landroid/graphics/Rect;
    new-instance v7, Landroid/view/InputChannel;

    invoke-direct {v7}, Landroid/view/InputChannel;-><init>()V

    .local v7, "_arg5":Landroid/view/InputChannel;
    move-object/from16 v1, p0

    .line 70
    invoke-virtual/range {v1 .. v7}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v15

    .line 71
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    if-eqz v6, :cond_1

    .line 74
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    :goto_2
    if-eqz v7, :cond_2

    .line 81
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_3
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 78
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    .restart local v7    # "_arg5":Landroid/view/InputChannel;
    .restart local v15    # "_result":I
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 85
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 91
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v7    # "_arg5":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :sswitch_2
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 95
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 104
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 108
    .local v6, "_arg4":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v7, "_arg5":Landroid/graphics/Rect;
    new-instance v8, Landroid/view/InputChannel;

    invoke-direct {v8}, Landroid/view/InputChannel;-><init>()V

    .local v8, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v1, p0

    .line 111
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v15

    .line 112
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    if-eqz v7, :cond_4

    .line 115
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_5
    if-eqz v8, :cond_5

    .line 122
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 101
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .line 119
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    .restart local v8    # "_arg6":Landroid/view/InputChannel;
    .restart local v15    # "_result":I
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 126
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 132
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v8    # "_arg6":Landroid/view/InputChannel;
    .end local v15    # "_result":I
    :sswitch_3
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 136
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 145
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .restart local v5    # "_arg3":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .local v6, "_arg4":Landroid/graphics/Rect;
    move-object/from16 v1, p0

    .line 148
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v15

    .line 149
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    if-eqz v6, :cond_7

    .line 152
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_7

    .line 156
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    .restart local v15    # "_result":I
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 162
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :sswitch_4
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 175
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 179
    .local v6, "_arg4":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v1, p0

    .line 180
    invoke-virtual/range {v1 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I

    move-result v15

    .line 181
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    if-eqz v7, :cond_9

    .line 184
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .line 188
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":Landroid/graphics/Rect;
    .restart local v15    # "_result":I
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 194
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/graphics/Rect;
    .end local v15    # "_result":I
    :sswitch_5
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 210
    sget-object v1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 216
    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 218
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 220
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 224
    .local v8, "_arg6":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v9, "_arg7":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v10, "_arg8":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v11, "_arg9":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 232
    .local v12, "_arg10":Landroid/graphics/Rect;
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 234
    .local v13, "_arg11":Landroid/content/res/Configuration;
    new-instance v14, Landroid/view/Surface;

    invoke-direct {v14}, Landroid/view/Surface;-><init>()V

    .local v14, "_arg12":Landroid/view/Surface;
    move-object/from16 v1, p0

    .line 235
    invoke-virtual/range {v1 .. v14}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 236
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    if-eqz v9, :cond_b

    .line 239
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    :goto_c
    if-eqz v10, :cond_c

    .line 246
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_d
    if-eqz v11, :cond_d

    .line 253
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    :goto_e
    if-eqz v12, :cond_e

    .line 260
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    :goto_f
    if-eqz v13, :cond_f

    .line 267
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_10
    if-eqz v14, :cond_10

    .line 274
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 213
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Landroid/graphics/Rect;
    .end local v10    # "_arg8":Landroid/graphics/Rect;
    .end local v11    # "_arg9":Landroid/graphics/Rect;
    .end local v12    # "_arg10":Landroid/graphics/Rect;
    .end local v13    # "_arg11":Landroid/content/res/Configuration;
    .end local v14    # "_arg12":Landroid/view/Surface;
    .end local v15    # "_result":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_b

    .line 243
    .restart local v5    # "_arg3":I
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":Landroid/graphics/Rect;
    .restart local v10    # "_arg8":Landroid/graphics/Rect;
    .restart local v11    # "_arg9":Landroid/graphics/Rect;
    .restart local v12    # "_arg10":Landroid/graphics/Rect;
    .restart local v13    # "_arg11":Landroid/content/res/Configuration;
    .restart local v14    # "_arg12":Landroid/view/Surface;
    .restart local v15    # "_result":I
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 250
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 257
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 264
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 271
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 278
    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 284
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Landroid/graphics/Rect;
    .end local v10    # "_arg8":Landroid/graphics/Rect;
    .end local v11    # "_arg9":Landroid/graphics/Rect;
    .end local v12    # "_arg10":Landroid/graphics/Rect;
    .end local v13    # "_arg11":Landroid/content/res/Configuration;
    .end local v14    # "_arg12":Landroid/view/Surface;
    .end local v15    # "_result":I
    :sswitch_7
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 296
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v15

    .line 297
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v15, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 298
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 303
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v15    # "_result":Z
    :sswitch_9
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 307
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 308
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 313
    .local v3, "_arg1":Landroid/graphics/Region;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 311
    .end local v3    # "_arg1":Landroid/graphics/Region;
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Region;
    goto :goto_13

    .line 319
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/graphics/Region;
    :sswitch_a
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 323
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 326
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 332
    .local v4, "_arg2":Landroid/graphics/Rect;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 333
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 339
    .local v5, "_arg3":Landroid/graphics/Rect;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 340
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    .local v6, "_arg4":Landroid/graphics/Region;
    :goto_16
    move-object/from16 v1, p0

    .line 345
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 329
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    .end local v6    # "_arg4":Landroid/graphics/Region;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/graphics/Rect;
    goto :goto_14

    .line 336
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/graphics/Rect;
    goto :goto_15

    .line 343
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Landroid/graphics/Region;
    goto :goto_16

    .line 351
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    .end local v6    # "_arg4":Landroid/graphics/Region;
    :sswitch_b
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 355
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v3, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v3, :cond_16

    .line 359
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 365
    :goto_17
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 363
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 369
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :sswitch_c
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 372
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 378
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_d
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 381
    .local v2, "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 380
    .end local v2    # "_arg0":Z
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 387
    :sswitch_e
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v15

    .line 389
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v15, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 390
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 395
    .end local v15    # "_result":Z
    :sswitch_f
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 399
    .local v2, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v4, 0x1

    .line 402
    .local v4, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v15

    .line 403
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v15, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 401
    .end local v4    # "_arg2":Z
    .end local v15    # "_result":Z
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 404
    .restart local v4    # "_arg2":Z
    .restart local v15    # "_result":Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 409
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v15    # "_result":Z
    :sswitch_10
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 417
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 419
    .local v5, "_arg3":I
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .local v6, "_arg4":Landroid/view/Surface;
    move-object/from16 v1, p0

    .line 420
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v15

    .line 421
    .local v15, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 423
    if-eqz v6, :cond_1b

    .line 424
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 430
    :goto_1c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 428
    :cond_1b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 434
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/view/Surface;
    .end local v15    # "_result":Landroid/os/IBinder;
    :sswitch_11
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 438
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 440
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 442
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 444
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 446
    .local v6, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 448
    .local v7, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 449
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipData;

    .local v8, "_arg6":Landroid/content/ClipData;
    :goto_1d
    move-object/from16 v1, p0

    .line 454
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v15

    .line 455
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v15, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 452
    .end local v8    # "_arg6":Landroid/content/ClipData;
    .end local v15    # "_result":Z
    :cond_1c
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/content/ClipData;
    goto :goto_1d

    .line 456
    .restart local v15    # "_result":Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 461
    .end local v2    # "_arg0":Landroid/view/IWindow;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    .end local v8    # "_arg6":Landroid/content/ClipData;
    .end local v15    # "_result":Z
    :sswitch_12
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 465
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v3, 0x1

    .line 466
    .local v3, "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 465
    .end local v3    # "_arg1":Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 472
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_13
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 475
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 481
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_14
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    .line 484
    .restart local v2    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":Landroid/view/IWindow;
    :sswitch_15
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 494
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 496
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 498
    .restart local v4    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 500
    .restart local v5    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .restart local v6    # "_arg4":F
    move-object/from16 v1, p0

    .line 501
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 507
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    :sswitch_16
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 510
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 520
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 524
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 526
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 529
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 535
    .local v7, "_arg5":Landroid/os/Bundle;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v8, 0x1

    .local v8, "_arg6":Z
    :goto_21
    move-object/from16 v1, p0

    .line 536
    invoke-virtual/range {v1 .. v8}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v15

    .line 537
    .local v15, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    if-eqz v15, :cond_21

    .line 539
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 545
    :goto_22
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 532
    .end local v7    # "_arg5":Landroid/os/Bundle;
    .end local v8    # "_arg6":Z
    .end local v15    # "_result":Landroid/os/Bundle;
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "_arg5":Landroid/os/Bundle;
    goto :goto_20

    .line 535
    :cond_20
    const/4 v8, 0x0

    goto :goto_21

    .line 543
    .restart local v8    # "_arg6":Z
    .restart local v15    # "_result":Landroid/os/Bundle;
    :cond_21
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 549
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Landroid/os/Bundle;
    .end local v8    # "_arg6":Z
    .end local v15    # "_result":Landroid/os/Bundle;
    :sswitch_18
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 553
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 554
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 559
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 557
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_22
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_23

    .line 565
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_19
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 569
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 571
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 573
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 575
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 577
    .local v6, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 579
    .local v7, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 581
    .local v8, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .local v9, "_arg7":F
    move-object/from16 v1, p0

    .line 582
    invoke-virtual/range {v1 .. v9}, Landroid/view/IWindowSession$Stub;->setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 588
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":F
    .end local v7    # "_arg5":F
    .end local v8    # "_arg6":F
    .end local v9    # "_arg7":F
    :sswitch_1a
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 592
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 593
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 599
    .local v3, "_arg1":Landroid/graphics/Rect;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v4, 0x1

    .line 600
    .local v4, "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 596
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":Z
    :cond_23
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    goto :goto_24

    .line 599
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 606
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1b
    const-string v1, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 609
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v15

    .line 610
    .local v15, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v15, :cond_25

    invoke-interface {v15}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 612
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 611
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 43
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
