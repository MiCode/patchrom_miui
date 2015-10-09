.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field final mAidGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mBannerResourceId:I

.field final mCategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mDescription:Ljava/lang/String;

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mService:Landroid/content/pm/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 20
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 110
    .local v15, "si":Landroid/content/pm/ServiceInfo;
    const/4 v12, 0x0

    .line 112
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    .line 113
    :try_start_0
    const-string v17, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 114
    if-nez v12, :cond_2

    .line 115
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create context for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v17

    .line 119
    :cond_1
    :try_start_2
    const-string v17, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 120
    if-nez v12, :cond_2

    .line 121
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 126
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v8

    .line 127
    .local v8, "eventType":I
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    .line 128
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_4

    const-string v17, "host-apdu-service"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 133
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_4
    if-nez p3, :cond_5

    const-string/jumbo v17, "offhost-apdu-service"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 136
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 140
    :cond_5
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 141
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 142
    .local v4, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_a

    .line 143
    sget-object v17, Lcom/android/internal/R$styleable;->HostApduService:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 145
    .local v14, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 146
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 148
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 151
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 153
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    :goto_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    .line 167
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    .line 168
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    .line 169
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 170
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 171
    .local v6, "depth":I
    const/4 v5, 0x0

    .line 175
    .local v5, "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_6
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_11

    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_11

    .line 176
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 177
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_c

    const-string v17, "aid-group"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-nez v5, :cond_c

    .line 179
    sget-object v17, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 182
    .local v9, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "groupDescription":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "groupCategory":Ljava/lang/String;
    const-string/jumbo v17, "payment"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 187
    const-string/jumbo v10, "other"

    .line 189
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 190
    .restart local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    if-eqz v5, :cond_b

    .line 191
    const-string/jumbo v17, "other"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 192
    const-string v17, "ApduServiceInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " category"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v5, 0x0

    .line 199
    :cond_9
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 155
    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    .end local v6    # "depth":I
    .end local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v10    # "groupCategory":Ljava/lang/String;
    .end local v11    # "groupDescription":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    :cond_a
    sget-object v17, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 157
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 158
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 160
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 161
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 163
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 197
    .restart local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    .restart local v6    # "depth":I
    .restart local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v10    # "groupCategory":Ljava/lang/String;
    .restart local v11    # "groupDescription":Ljava/lang/String;
    :cond_b
    new-instance v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    invoke-direct {v5, v10, v11}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "currentGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    goto :goto_3

    .line 200
    .end local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v10    # "groupCategory":Ljava/lang/String;
    .end local v11    # "groupDescription":Ljava/lang/String;
    :cond_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v8, v0, :cond_f

    const-string v17, "aid-group"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    if-eqz v5, :cond_f

    .line 202
    iget-object v0, v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_d
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 208
    :cond_e
    const-string v17, "ApduServiceInfo"

    const-string v18, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 211
    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    const-string v17, "aid-filter"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v5, :cond_6

    .line 213
    sget-object v17, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 215
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "aid":Ljava/lang/String;
    invoke-static {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidAid(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    iget-object v0, v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 218
    iget-object v0, v5, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :goto_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 221
    :cond_10
    const-string v17, "ApduServiceInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 229
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "aid":Ljava/lang/String;
    :cond_11
    if-eqz v12, :cond_12

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 231
    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;ZI)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p5, "requiresUnlock"    # Z
    .param p6, "bannerResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p4, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 94
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    .line 98
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 99
    iput-boolean p5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 100
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 101
    .local v0, "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_0
    iput p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 105
    return-void
.end method

.method static isValidAid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 286
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return v1

    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    .local v0, "aidLength":I
    if-eqz v0, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 291
    :cond_1
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correctly formatted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 296
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is shorter than 5 bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 316
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 320
    :goto_0
    return v1

    .line 317
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 318
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 320
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mCategoryToGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v0, 0x0

    .line 273
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 274
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 281
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v3, ", AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 309
    .local v0, "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 343
    :cond_0
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return-void

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0

    :cond_2
    move v1, v2

    .line 343
    goto :goto_1
.end method
