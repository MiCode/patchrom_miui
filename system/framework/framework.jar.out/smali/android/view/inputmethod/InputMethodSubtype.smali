.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsAsciiCapable:Z

.field private final mIsAuxiliary:Z

.field private final mOverridesImplicitlyEnabledSubtype:Z

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeIconResId:I

.field private final mSubtypeId:I

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeMode:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    .line 505
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z

    .prologue
    .line 222
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 223
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z

    .prologue
    .line 234
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 236
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .param p8, "id"    # I

    .prologue
    .line 271
    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    .line 273
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    .end local v0    # "s":Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_5
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 311
    return-void

    .line 301
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 303
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 305
    :cond_2
    const-string v0, ""

    goto :goto_2

    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 306
    goto :goto_3

    :cond_4
    move v1, v3

    .line 307
    goto :goto_4

    :cond_5
    move v2, v3

    .line 310
    goto :goto_5
.end method

.method private constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .locals 6
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$100(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 281
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$200(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 282
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$300(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 283
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$400(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 284
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$500(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 285
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$600(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 286
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$700(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 287
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$800(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 288
    # getter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$900(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 291
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    :goto_0
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 294
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    iget-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    iget-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p2, "x1"    # Landroid/view/inputmethod/InputMethodSubtype$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method private static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-object v1

    .line 521
    :cond_1
    const-string v2, "_"

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 525
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_2
    array-length v2, v0

    if-ne v2, v5, :cond_3

    .line 527
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_3
    array-length v2, v0

    if-ne v2, v6, :cond_0

    .line 529
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p0, "nameId"    # I
    .param p1, "iconId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "isAuxiliary"    # Z
    .param p6, "overridesImplicitlyEnabledSubtype"    # Z
    .param p7, "id"    # I
    .param p8, "isAsciiCapable"    # Z

    .prologue
    .line 200
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 201
    .local v0, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$102(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    .line 202
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$202(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    .line 203
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$302(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$402(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$502(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$602(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    .line 207
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$702(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    .line 208
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$802(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I

    .line 209
    # setter for: Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->access$902(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z

    .line 210
    return-object v0
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 419
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_4

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 422
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 423
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    .line 425
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 426
    aget-object v4, v3, v1

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_1

    .line 428
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_1
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 430
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 431
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v5, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 437
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_4
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 7
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "extraValue"    # Ljava/lang/String;
    .param p3, "isAuxiliary"    # Z
    .param p4, "overridesImplicitlyEnabledSubtype"    # Z
    .param p5, "isAsciiCapable"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    if-nez p5, :cond_0

    move v0, v1

    .line 540
    .local v0, "needsToCalculateCompatibleHashCode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 541
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 544
    :goto_1
    return v1

    .end local v0    # "needsToCalculateCompatibleHashCode":Z
    :cond_0
    move v0, v2

    .line 539
    goto :goto_0

    .line 544
    .restart local v0    # "needsToCalculateCompatibleHashCode":Z
    :cond_1
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v6

    const/4 v1, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_1
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p2, :cond_0

    .line 576
    .end local p3    # "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    return-object p3

    .line 560
    .restart local p3    # "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 562
    .local v3, "inputSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v4, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 564
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 565
    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 566
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 567
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 564
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 574
    .restart local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    move-object p3, v4

    .line 576
    goto :goto_0
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    instance-of v3, p1, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 470
    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 471
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget v3, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v3, :cond_3

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 483
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    move v1, v2

    .line 472
    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    move v1, v2

    .line 483
    goto :goto_0
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 394
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 395
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "localeStr":Ljava/lang/String;
    :goto_0
    iget v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v5, :cond_2

    .line 414
    .end local v2    # "localeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 395
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    goto :goto_0

    .line 399
    .restart local v2    # "localeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v5, p2, v6, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 401
    .local v4, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    const-string v5, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "replacementString":Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .end local v3    # "replacementString":Ljava/lang/String;
    :goto_3
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 402
    goto :goto_2

    .line 407
    .restart local v3    # "replacementString":Ljava/lang/String;
    :cond_4
    const-string v3, ""
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 409
    .end local v3    # "replacementString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found illegal format in subtype name("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, ""

    goto :goto_1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public isAsciiCapable()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return v0
.end method

.method public isAuxiliary()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public overridesImplicitlyEnabledSubtype()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    return-void

    :cond_0
    move v0, v2

    .line 498
    goto :goto_0

    :cond_1
    move v0, v2

    .line 499
    goto :goto_1

    :cond_2
    move v1, v2

    .line 502
    goto :goto_2
.end method
