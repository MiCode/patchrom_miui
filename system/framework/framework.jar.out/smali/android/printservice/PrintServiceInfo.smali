.class public final Landroid/printservice/PrintServiceInfo;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_PRINT_SERVICE:Ljava/lang/String; = "print-service"


# instance fields
.field private final mAddPrintersActivityName:Ljava/lang/String;

.field private final mAdvancedPrintOptionsActivityName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/printservice/PrintServiceInfo$1;

    invoke-direct {v0}, Landroid/printservice/PrintServiceInfo$1;-><init>()V

    sput-object v0, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "settingsActivityName"    # Ljava/lang/String;
    .param p3, "addPrintersActivityName"    # Ljava/lang/String;
    .param p4, "advancedPrintOptionsActivityName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 91
    iput-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;
    .locals 17
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v11, 0x0

    .line 106
    .local v11, "settingsActivityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 107
    .local v1, "addPrintersActivityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, "advancedPrintOptionsActivityName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 111
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v15, "android.printservice"

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 113
    if-eqz v9, :cond_1

    .line 115
    const/4 v12, 0x0

    .line 116
    .local v12, "type":I
    :goto_0
    const/4 v14, 0x1

    if-eq v12, v14, :cond_0

    const/4 v14, 0x2

    if-eq v12, v14, :cond_0

    .line 117
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "print-service"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 122
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Ignoring meta-data that does not start with print-service tag"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_1
    if-eqz v9, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 156
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_1
    :goto_2
    new-instance v14, Landroid/printservice/PrintServiceInfo;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v1, v2}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14

    .line 125
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 127
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 128
    .local v3, "allAttributes":Landroid/util/AttributeSet;
    sget-object v14, Lcom/android/internal/R$styleable;->PrintService:[I

    invoke-virtual {v10, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 131
    .local v4, "attributes":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 134
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    .end local v3    # "allAttributes":Landroid/util/AttributeSet;
    .end local v4    # "attributes":Landroid/content/res/TypedArray;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v10    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    .line 143
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error reading meta-data:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-eqz v9, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 144
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 145
    .local v13, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error reading meta-data:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    if-eqz v9, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 146
    .end local v13    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v5

    .line 147
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-object v14, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to load resources for: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v9, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_2

    .line 150
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    if-eqz v9, :cond_3

    .line 151
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v14
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    if-ne p0, p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 245
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 249
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 251
    check-cast v0, Landroid/printservice/PrintServiceInfo;

    .line 252
    .local v0, "other":Landroid/printservice/PrintServiceInfo;
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 253
    iget-object v3, v0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 254
    goto :goto_0

    .line 256
    :cond_4
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 257
    goto :goto_0
.end method

.method public getAddPrintersActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvancedOptionsActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ", resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, ", settingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", addPrintersActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", advancedPrintOptionsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return-void
.end method
