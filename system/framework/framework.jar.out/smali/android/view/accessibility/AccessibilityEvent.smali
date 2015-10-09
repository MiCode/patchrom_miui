.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CLICKED:I = 0x1

.field public static final TYPE_VIEW_FOCUSED:I = 0x8

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_SELECTED:I = 0x4

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAction:I

.field mContentChangeTypes:I

.field private mEventTime:J

.field private mEventType:I

.field mMovementGranularity:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 1365
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 730
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 731
    return-void
.end method

.method public static eventTypeToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "eventType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1190
    const/4 v3, -0x1

    if-ne p0, v3, :cond_0

    .line 1191
    const-string v3, "TYPES_ALL_MASK"

    .line 1359
    :goto_0
    return-object v3

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1195
    .local v1, "eventTypeCount":I
    :goto_1
    if-eqz p0, :cond_17

    .line 1196
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v2, v4, v3

    .line 1197
    .local v2, "eventTypeFlag":I
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr p0, v3

    .line 1198
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 1200
    :sswitch_0
    if-lez v1, :cond_1

    .line 1201
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_1
    const-string v3, "TYPE_VIEW_CLICKED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    add-int/lit8 v1, v1, 0x1

    .line 1205
    goto :goto_1

    .line 1207
    :sswitch_1
    if-lez v1, :cond_2

    .line 1208
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_2
    const-string v3, "TYPE_VIEW_LONG_CLICKED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    add-int/lit8 v1, v1, 0x1

    .line 1212
    goto :goto_1

    .line 1214
    :sswitch_2
    if-lez v1, :cond_3

    .line 1215
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_3
    const-string v3, "TYPE_VIEW_SELECTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    add-int/lit8 v1, v1, 0x1

    .line 1219
    goto :goto_1

    .line 1221
    :sswitch_3
    if-lez v1, :cond_4

    .line 1222
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_4
    const-string v3, "TYPE_VIEW_FOCUSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    add-int/lit8 v1, v1, 0x1

    .line 1226
    goto :goto_1

    .line 1228
    :sswitch_4
    if-lez v1, :cond_5

    .line 1229
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_5
    const-string v3, "TYPE_VIEW_TEXT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    add-int/lit8 v1, v1, 0x1

    .line 1233
    goto :goto_1

    .line 1235
    :sswitch_5
    if-lez v1, :cond_6

    .line 1236
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :cond_6
    const-string v3, "TYPE_WINDOW_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    add-int/lit8 v1, v1, 0x1

    .line 1240
    goto :goto_1

    .line 1242
    :sswitch_6
    if-lez v1, :cond_7

    .line 1243
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_7
    const-string v3, "TYPE_VIEW_HOVER_ENTER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    add-int/lit8 v1, v1, 0x1

    .line 1247
    goto :goto_1

    .line 1249
    :sswitch_7
    if-lez v1, :cond_8

    .line 1250
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_8
    const-string v3, "TYPE_VIEW_HOVER_EXIT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    add-int/lit8 v1, v1, 0x1

    .line 1254
    goto/16 :goto_1

    .line 1256
    :sswitch_8
    if-lez v1, :cond_9

    .line 1257
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_9
    const-string v3, "TYPE_NOTIFICATION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    add-int/lit8 v1, v1, 0x1

    .line 1261
    goto/16 :goto_1

    .line 1263
    :sswitch_9
    if-lez v1, :cond_a

    .line 1264
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_a
    const-string v3, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    add-int/lit8 v1, v1, 0x1

    .line 1268
    goto/16 :goto_1

    .line 1270
    :sswitch_a
    if-lez v1, :cond_b

    .line 1271
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_b
    const-string v3, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    add-int/lit8 v1, v1, 0x1

    .line 1275
    goto/16 :goto_1

    .line 1277
    :sswitch_b
    if-lez v1, :cond_c

    .line 1278
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_c
    const-string v3, "TYPE_WINDOW_CONTENT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    add-int/lit8 v1, v1, 0x1

    .line 1282
    goto/16 :goto_1

    .line 1284
    :sswitch_c
    if-lez v1, :cond_d

    .line 1285
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_d
    const-string v3, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    add-int/lit8 v1, v1, 0x1

    .line 1289
    goto/16 :goto_1

    .line 1291
    :sswitch_d
    if-lez v1, :cond_e

    .line 1292
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_e
    const-string v3, "TYPE_VIEW_SCROLLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    add-int/lit8 v1, v1, 0x1

    .line 1296
    goto/16 :goto_1

    .line 1298
    :sswitch_e
    if-lez v1, :cond_f

    .line 1299
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    :cond_f
    const-string v3, "TYPE_ANNOUNCEMENT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    add-int/lit8 v1, v1, 0x1

    .line 1303
    goto/16 :goto_1

    .line 1305
    :sswitch_f
    if-lez v1, :cond_10

    .line 1306
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_10
    const-string v3, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    add-int/lit8 v1, v1, 0x1

    .line 1310
    goto/16 :goto_1

    .line 1312
    :sswitch_10
    if-lez v1, :cond_11

    .line 1313
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_11
    const-string v3, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    add-int/lit8 v1, v1, 0x1

    .line 1317
    goto/16 :goto_1

    .line 1319
    :sswitch_11
    if-lez v1, :cond_12

    .line 1320
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    :cond_12
    const-string v3, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    add-int/lit8 v1, v1, 0x1

    .line 1324
    goto/16 :goto_1

    .line 1326
    :sswitch_12
    if-lez v1, :cond_13

    .line 1327
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_13
    const-string v3, "TYPE_GESTURE_DETECTION_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    add-int/lit8 v1, v1, 0x1

    .line 1331
    goto/16 :goto_1

    .line 1333
    :sswitch_13
    if-lez v1, :cond_14

    .line 1334
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :cond_14
    const-string v3, "TYPE_GESTURE_DETECTION_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    add-int/lit8 v1, v1, 0x1

    .line 1338
    goto/16 :goto_1

    .line 1340
    :sswitch_14
    if-lez v1, :cond_15

    .line 1341
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    :cond_15
    const-string v3, "TYPE_TOUCH_INTERACTION_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    add-int/lit8 v1, v1, 0x1

    .line 1345
    goto/16 :goto_1

    .line 1347
    :sswitch_15
    if-lez v1, :cond_16

    .line 1348
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_16
    const-string v3, "TYPE_TOUCH_INTERACTION_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1355
    .end local v2    # "eventTypeFlag":I
    :cond_17
    if-le v1, v4, :cond_18

    .line 1356
    const/4 v3, 0x0

    const/16 v4, 0x5b

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1357
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1359
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1198
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_8
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
    .end sparse-switch
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .prologue
    .line 984
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 985
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return-object v0

    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    goto :goto_0
.end method

.method public static obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "eventType"    # I

    .prologue
    .line 950
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 951
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 952
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 964
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 965
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 967
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 968
    .local v4, "recordCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 969
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 970
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    .line 971
    .local v3, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-object v0
.end method

.method private readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1067
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1068
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1069
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1070
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1071
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1075
    return-void

    .line 1074
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 1108
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1120
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1121
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1122
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1123
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1124
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1126
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 1
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 784
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    return-void
.end method

.method protected clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1009
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1010
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1011
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1012
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1013
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1015
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1016
    :goto_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    .line 1018
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    goto :goto_0

    .line 1020
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    return v0
.end method

.method public getContentChangeTypes()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 854
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public getMovementGranularity()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 794
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 739
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 740
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 741
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 742
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 743
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 744
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 745
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 746
    return-void
.end method

.method public initFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1033
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    .line 1036
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1039
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1040
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1041
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    .line 1042
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1043
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    iput v3, v1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1044
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1046
    .restart local v0    # "i":I
    .restart local v2    # "recordCount":I
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->clear()V

    .line 999
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1000
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 930
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 931
    return-void
.end method

.method public setContentChangeTypes(I)V
    .locals 0
    .param p1, "changeTypes"    # I

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 833
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 834
    return-void
.end method

.method public setEventTime(J)V
    .locals 0
    .param p1, "eventTime"    # J

    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 866
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 867
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 844
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 845
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 846
    return-void
.end method

.method public setMovementGranularity(I)V
    .locals 0
    .param p1, "granularity"    # I

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 899
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 900
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 887
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 888
    return-void
.end method

.method public setSealed(Z)V
    .locals 4
    .param p1, "sealed"    # Z

    .prologue
    .line 757
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 758
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 759
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 760
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 761
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 762
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1141
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1142
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1143
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1081
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1087
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1088
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1092
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v2

    .line 1093
    .local v2, "recordCount":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1095
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1096
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_0
    move v3, v4

    .line 1081
    goto :goto_0

    .line 1098
    .restart local v0    # "i":I
    .restart local v2    # "recordCount":I
    :cond_1
    return-void
.end method
