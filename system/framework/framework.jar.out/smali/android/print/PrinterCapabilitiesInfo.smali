.class public final Landroid/print/PrinterCapabilitiesInfo;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterCapabilitiesInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterCapabilitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

.field public static final DEFAULT_UNDEFINED:I = -0x1

.field private static final PROPERTY_COLOR_MODE:I = 0x2

.field private static final PROPERTY_COUNT:I = 0x3

.field private static final PROPERTY_MEDIA_SIZE:I = 0x0

.field private static final PROPERTY_RESOLUTION:I = 0x1


# instance fields
.field private mColorModes:I

.field private final mDefaults:[I

.field private mMediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation
.end field

.field private mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private mResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    .line 548
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 66
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 185
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 186
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMediaSizes(Landroid/os/Parcel;)V

    .line 187
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readResolutions(Landroid/os/Parcel;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 191
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readDefaults(Landroid/os/Parcel;)V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PrinterCapabilitiesInfo$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 1
    .param p1, "prototype"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 73
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Landroid/print/PrinterCapabilitiesInfo;)[I
    .locals 1
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method static synthetic access$302(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p1, "x1"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object p1
.end method

.method static synthetic access$400(Landroid/print/PrinterCapabilitiesInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    .line 39
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method static synthetic access$402(Landroid/print/PrinterCapabilitiesInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return p1
.end method

.method private colorModesToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    iget v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 280
    .local v2, "colorModes":I
    :goto_0
    if-eqz v2, :cond_1

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v1, v4, v3

    .line 282
    .local v1, "colorMode":I
    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 284
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    invoke-static {v1}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v1    # "colorMode":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readDefaults(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "defaultCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 352
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method private readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readMediaSizes(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, "mediaSizeCount":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_0

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    .line 309
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 310
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method private readResolutions(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .local v1, "resolutionCount":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    .line 331
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 332
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method private writeDefaults(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 357
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v2

    .line 358
    .local v0, "defaultCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 360
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method private writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {p1, p2}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private writeMediaSizes(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 293
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_1

    .line 294
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 298
    .local v1, "mediaSizeCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 300
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeResolutions(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 315
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v2, :cond_1

    .line 316
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    :cond_0
    return-void

    .line 319
    :cond_1
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 320
    .local v1, "resolutionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 322
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 5
    .param p1, "other"    # Landroid/print/PrinterCapabilitiesInfo;

    .prologue
    const/4 v4, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 86
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 87
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 89
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    :goto_0
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 98
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :goto_1
    iget v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iput v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 110
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v2

    .line 111
    .local v0, "defaultCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 112
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v0    # "defaultCount":I
    .end local v1    # "i":I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_0

    .line 94
    :cond_3
    iput-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_0

    .line 102
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_1

    .line 105
    :cond_5
    iput-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 231
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 233
    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    .line 234
    .local v0, "other":Landroid/print/PrinterCapabilitiesInfo;
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_4

    .line 235
    iget-object v3, v0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_5

    move v1, v2

    .line 236
    goto :goto_0

    .line 238
    :cond_4
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_5
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v3, :cond_6

    .line 242
    iget-object v3, v0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v3, :cond_7

    move v1, v2

    .line 243
    goto :goto_0

    .line 245
    :cond_6
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v4, v0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_7
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v3, :cond_8

    .line 249
    iget-object v3, v0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v3, :cond_9

    move v1, v2

    .line 250
    goto :goto_0

    .line 252
    :cond_8
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v4, v0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 253
    goto :goto_0

    .line 255
    :cond_9
    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v4, v0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 256
    goto :goto_0

    .line 258
    :cond_a
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v4, v0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 259
    goto :goto_0
.end method

.method public getColorModes()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method public getDefaults()Landroid/print/PrintAttributes;
    .locals 6

    .prologue
    .line 162
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 164
    .local v0, "builder":Landroid/print/PrintAttributes$Builder;
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, v4}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 166
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 167
    .local v2, "mediaSizeIndex":I
    if-ltz v2, :cond_0

    .line 168
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, v4}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 171
    :cond_0
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v5, 0x1

    aget v3, v4, v5

    .line 172
    .local v3, "resolutionIndex":I
    if-ltz v3, :cond_1

    .line 173
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, v4}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 176
    :cond_1
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v5, 0x2

    aget v1, v4, v5

    .line 177
    .local v1, "colorMode":I
    if-lez v1, :cond_2

    .line 178
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 181
    :cond_2
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v4

    return-object v4
.end method

.method public getMediaSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public getResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 212
    const/16 v0, 0x1f

    .line 213
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 214
    .local v1, "result":I
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 215
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 216
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 217
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    add-int v1, v2, v3

    .line 218
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 219
    return v1

    .line 214
    :cond_0
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 216
    :cond_2
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v1, "minMargins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", mediaSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ", resolutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", colorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->colorModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-direct {p0, v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V

    .line 202
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMediaSizes(Landroid/os/Parcel;)V

    .line 203
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeResolutions(Landroid/os/Parcel;)V

    .line 205
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeDefaults(Landroid/os/Parcel;)V

    .line 208
    return-void
.end method
