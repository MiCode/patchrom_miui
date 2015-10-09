.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2895
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2917
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 2918
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2923
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2924
    .local v2, "columnRawContactId":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2927
    .local v8, "rawContactId":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2928
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v10, "account_name"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2929
    const-string v10, "account_type"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2930
    const-string v10, "data_set"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2931
    const-string v10, "_id"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2932
    const-string v10, "dirty"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2933
    const-string/jumbo v10, "version"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2934
    const-string/jumbo v10, "sourceid"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2935
    const-string/jumbo v10, "sync1"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2936
    const-string/jumbo v10, "sync2"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2937
    const-string/jumbo v10, "sync3"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2938
    const-string/jumbo v10, "sync4"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2939
    const-string v10, "deleted"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2940
    const-string v10, "contact_id"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2941
    const-string/jumbo v10, "starred"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2942
    const-string/jumbo v10, "name_verified"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2943
    new-instance v3, Landroid/content/Entity;

    invoke-direct {v3, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 2947
    .local v3, "contact":Landroid/content/Entity;
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-eqz v10, :cond_1

    .line 2985
    :goto_0
    return-object v3

    .line 2951
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "cv":Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2952
    .restart local v4    # "cv":Landroid/content/ContentValues;
    const-string v10, "_id"

    const-string v11, "data_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2953
    const-string/jumbo v10, "res_package"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2955
    const-string/jumbo v10, "mimetype"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2956
    const-string v10, "is_primary"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2957
    const-string v10, "is_super_primary"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2959
    const-string v10, "data_version"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2960
    const-string v10, "group_sourceid"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2962
    const-string v10, "data_version"

    invoke-static {p1, v4, v10}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2964
    sget-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v6, v0, v5

    .line 2965
    .local v6, "key":Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2966
    .local v1, "columnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 2979
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid or unhandled data type"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2973
    :pswitch_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    :goto_2
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2976
    :pswitch_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    .line 2982
    .end local v1    # "columnIndex":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v10, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2983
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 2966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
