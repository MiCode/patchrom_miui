.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 45
    if-nez p0, :cond_1

    .line 46
    const/4 v0, 0x0

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    const-string v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    .line 49
    .local v0, "in":Landroid/database/IBulkCursor;
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/database/BulkCursorProxy;

    .end local v0    # "in":Landroid/database/IBulkCursor;
    invoke-direct {v0, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 135
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v8, 0x1

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 62
    :pswitch_0
    :try_start_0
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 64
    .local v6, "startPos":I
    invoke-virtual {p0, v6}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v7

    .line 65
    .local v7, "window":Landroid/database/CursorWindow;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-nez v7, :cond_0

    .line 67
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v6    # "startPos":I
    .end local v7    # "window":Landroid/database/CursorWindow;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "startPos":I
    .restart local v7    # "window":Landroid/database/CursorWindow;
    :cond_0
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    .end local v6    # "startPos":I
    .end local v7    # "window":Landroid/database/CursorWindow;
    :pswitch_1
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->deactivate()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :pswitch_2
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->close()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 93
    .local v3, "observer":Landroid/database/IContentObserver;
    invoke-virtual {p0, v3}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;)I

    move-result v0

    .line 94
    .local v0, "count":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    .end local v0    # "count":I
    .end local v3    # "observer":Landroid/database/IContentObserver;
    :pswitch_4
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .local v4, "position":I
    invoke-virtual {p0, v4}, Landroid/database/BulkCursorNative;->onMove(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v4    # "position":I
    :pswitch_5
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 117
    .end local v2    # "extras":Landroid/os/Bundle;
    :pswitch_6
    const-string v9, "android.content.IBulkCursor"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 119
    .restart local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 120
    .local v5, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
