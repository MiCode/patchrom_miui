.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final mForceDefault:Z

.field final mId:Ljava/lang/String;

.field private final mIsAuxIme:Z

.field final mIsDefaultResId:I

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsSwitchingToNextInputMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "additionalSubtypesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 129
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 130
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 131
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 132
    const/4 v9, 0x1

    .line 133
    .local v9, "isAuxIme":Z
    const/16 v19, 0x0

    .line 134
    .local v19, "supportsSwitchingToNextInputMethod":Z
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 137
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    .line 138
    .local v16, "settingsActivityComponent":Ljava/lang/String;
    const/4 v10, 0x0

    .line 140
    .local v10, "isDefaultResId":I
    const/4 v12, 0x0

    .line 142
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v21, "android.view.im"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 143
    if-nez v12, :cond_1

    .line 144
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "No android.view.im meta-data"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catch_0
    move-exception v7

    .line 213
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to create context for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v21

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v21

    .line 148
    :cond_1
    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 150
    .local v14, "res":Landroid/content/res/Resources;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 154
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 157
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "nodeName":Ljava/lang/String;
    const-string v21, "input-method"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 159
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Meta-data does not start with input-method tag"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 163
    :cond_4
    sget-object v21, Lcom/android/internal/R$styleable;->InputMethod:[I

    move-object/from16 v0, v21

    invoke-virtual {v14, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 165
    .local v15, "sa":Landroid/content/res/TypedArray;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 167
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 169
    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 172
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 177
    .local v6, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_9

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 178
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 179
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 180
    const-string/jumbo v21, "subtype"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 181
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Meta-data in input-method does not start with subtype tag"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 184
    :cond_7
    sget-object v21, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    move-object/from16 v0, v21

    invoke-virtual {v14, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 186
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v21, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x5

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x6

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x7

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    const/16 v22, 0x8

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v18

    .line 206
    .local v18, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v21

    if-nez v21, :cond_8

    .line 207
    const/4 v9, 0x0

    .line 209
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 216
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_9
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 219
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_b

    .line 220
    const/4 v9, 0x0

    .line 223
    :cond_b
    if-eqz p3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 225
    .local v4, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 226
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_d

    .line 227
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    .line 228
    .restart local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 231
    :cond_c
    const-string v21, "InputMethodInfo"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Duplicated subtype definition found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 236
    .end local v2    # "N":I
    .end local v4    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "i":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 238
    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 239
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 269
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 270
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 273
    iput p5, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 274
    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 275
    if-eqz p4, :cond_0

    .line 276
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_0
    iput-boolean p6, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 280
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 248
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 249
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 250
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 251
    return-void

    :cond_0
    move v0, v2

    .line 246
    goto :goto_0

    :cond_1
    move v1, v2

    .line 247
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {p1, p2, p3}, Landroid/view/inputmethod/InputMethodInfo;->buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p4

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V

    .line 260
    return-void
.end method

.method private static buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 284
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 285
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/pm/ServiceInfo;

    invoke-direct {v2}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 286
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 287
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 288
    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 289
    iput-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 290
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 291
    iput-object p0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 292
    iput-object p1, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 293
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 294
    iput-object p2, v2, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 295
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 296
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 439
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 440
    :cond_1
    if-eqz p1, :cond_0

    .line 442
    instance-of v2, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 444
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 445
    .local v0, "obj":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDefaultResourceId()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 386
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuxiliaryIme()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public isDefault(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v3, :cond_0

    .line 404
    const/4 v2, 0x1

    .line 410
    :goto_0
    return v2

    .line 407
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 408
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 409
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 356
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 346
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public supportsSwitchingToNextInputMethod()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 482
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 483
    return-void

    :cond_0
    move v0, v2

    .line 479
    goto :goto_0

    :cond_1
    move v1, v2

    .line 480
    goto :goto_1
.end method
