.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 54
    if-nez p0, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 59
    .local v0, "in":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0    # "in":Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 361
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43
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
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 356
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 80
    :pswitch_1
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 86
    .local v6, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 87
    .local v33, "num":I
    const/4 v7, 0x0

    .line 88
    .local v7, "projection":[Ljava/lang/String;
    if-lez v33, :cond_0

    .line 89
    move/from16 v0, v33

    new-array v7, v0, [Ljava/lang/String;

    .line 90
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v29

    .line 90
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 96
    .end local v29    # "i":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 98
    const/4 v9, 0x0

    .line 99
    .local v9, "selectionArgs":[Ljava/lang/String;
    if-lez v33, :cond_1

    .line 100
    move/from16 v0, v33

    new-array v9, v0, [Ljava/lang/String;

    .line 101
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v29

    .line 101
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 106
    .end local v29    # "i":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v35

    .line 109
    .local v35, "observer":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v11

    .local v11, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v4, p0

    .line 112
    invoke-virtual/range {v4 .. v11}, Landroid/content/ContentProviderNative;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 114
    .local v25, "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_4

    .line 116
    :try_start_1
    new-instance v22, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2, v4}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    .line 118
    .local v22, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    invoke-virtual/range {v22 .. v22}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v26

    .line 119
    .local v26, "d":Landroid/database/BulkCursorDescriptor;
    const/16 v25, 0x0

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v25, :cond_2

    .line 127
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v26    # "d":Landroid/database/BulkCursorDescriptor;
    :cond_2
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 126
    :catchall_0
    move-exception v4

    if-eqz v25, :cond_3

    .line 127
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v33    # "num":I
    .end local v35    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v27

    .line 352
    .local v27, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 353
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 131
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v5    # "callingPkg":Ljava/lang/String;
    .restart local v6    # "url":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "num":I
    .restart local v35    # "observer":Landroid/database/IContentObserver;
    :cond_4
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 140
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v33    # "num":I
    .end local v35    # "observer":Landroid/database/IContentObserver;
    :pswitch_2
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 142
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v41

    .line 143
    .local v41, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 151
    .end local v6    # "url":Landroid/net/Uri;
    .end local v41    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 154
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 156
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v37

    .line 157
    .local v37, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 159
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 164
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v37    # "out":Landroid/net/Uri;
    :pswitch_4
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 167
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/content/ContentValues;

    .line 169
    .local v15, "values":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v24

    .line 170
    .local v24, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 177
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":[Landroid/content/ContentValues;
    .end local v24    # "count":I
    :pswitch_5
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 180
    .local v34, "numOperations":I
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v36, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    .line 183
    sget-object v4, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 185
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v39

    .line 186
    .local v39, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 188
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 193
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v34    # "numOperations":I
    .end local v36    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v39    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 196
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 197
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 199
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/content/ContentProviderNative;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 201
    .restart local v24    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 208
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v24    # "count":I
    :pswitch_7
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 211
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 212
    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 213
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 215
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderNative;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 217
    .restart local v24    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 224
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v24    # "count":I
    :pswitch_8
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 227
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 228
    .local v32, "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .line 232
    .local v21, "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    .line 233
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v28, :cond_6

    .line 235
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 239
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 246
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "mode":Ljava/lang/String;
    :pswitch_9
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 249
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 250
    .restart local v32    # "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .line 254
    .restart local v21    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v28

    .line 255
    .local v28, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v28, :cond_7

    .line 257
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 268
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v28    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v32    # "mode":Ljava/lang/String;
    :pswitch_a
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 272
    .local v30, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 273
    .local v40, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 275
    .local v23, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v40

    move-object/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v38

    .line 277
    .local v38, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 279
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 284
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v23    # "args":Landroid/os/Bundle;
    .end local v30    # "method":Ljava/lang/String;
    .end local v38    # "responseBundle":Landroid/os/Bundle;
    .end local v40    # "stringArg":Ljava/lang/String;
    :pswitch_b
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 286
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 287
    .local v31, "mimeTypeFilter":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 288
    .local v42, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 291
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 296
    .end local v6    # "url":Landroid/net/Uri;
    .end local v31    # "mimeTypeFilter":Ljava/lang/String;
    .end local v42    # "types":[Ljava/lang/String;
    :pswitch_c
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 298
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 299
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 300
    .local v19, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v20

    .line 301
    .local v20, "opts":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .restart local v21    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 305
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v28

    .line 306
    .restart local v28    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v28, :cond_8

    .line 308
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 312
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 319
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "opts":Landroid/os/Bundle;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v28    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_d
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    .line 322
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-interface {v11}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 324
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 329
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_e
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 333
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v37

    .line 334
    .restart local v37    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 341
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v37    # "out":Landroid/net/Uri;
    :pswitch_f
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 345
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v37

    .line 346
    .restart local v37    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
