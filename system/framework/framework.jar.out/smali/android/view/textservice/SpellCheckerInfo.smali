.class public final Landroid/view/textservice/SpellCheckerInfo;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mLabel:I

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 66
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 67
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 68
    .local v14, "si":Landroid/content/pm/ServiceInfo;
    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 71
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 72
    .local v7, "label":I
    const/4 v13, 0x0

    .line 74
    .local v13, "settingsActivityComponent":Ljava/lang/String;
    const/4 v9, 0x0

    .line 76
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v18, "android.view.textservice.scs"

    move-object/from16 v0, v18

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 77
    if-nez v9, :cond_1

    .line 78
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "No android.view.textservice.scs meta-data"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catch_0
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v18, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Caught exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create context for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v18

    .line 82
    :cond_1
    :try_start_2
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 83
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 86
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 89
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v18, "spell-checker"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 91
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "Meta-data does not start with spell-checker tag"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 95
    :cond_4
    sget-object v18, Lcom/android/internal/R$styleable;->SpellChecker:[I

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 97
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 98
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 100
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 105
    .local v5, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v5, :cond_8

    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 106
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 107
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 108
    .local v16, "subtypeNodeName":Ljava/lang/String;
    const-string/jumbo v18, "subtype"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 109
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v19, "Meta-data in spell-checker does not start with subtype tag"

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 112
    :cond_7
    sget-object v18, Lcom/android/internal/R$styleable;->SpellChecker_Subtype:[I

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 114
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v15, Landroid/view/textservice/SpellCheckerSubtype;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v15, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v15, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 129
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v16    # "subtypeNodeName":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    :cond_9
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 132
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 143
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 144
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 256
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 218
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 208
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, ""

    .line 209
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 183
    return-void
.end method
