.class public Landroid/media/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final EFFECT_AUTOFIX:Ljava/lang/String; = "android.media.effect.effects.AutoFixEffect"

.field public static final EFFECT_BACKDROPPER:Ljava/lang/String; = "android.media.effect.effects.BackDropperEffect"

.field public static final EFFECT_BITMAPOVERLAY:Ljava/lang/String; = "android.media.effect.effects.BitmapOverlayEffect"

.field public static final EFFECT_BLACKWHITE:Ljava/lang/String; = "android.media.effect.effects.BlackWhiteEffect"

.field public static final EFFECT_BRIGHTNESS:Ljava/lang/String; = "android.media.effect.effects.BrightnessEffect"

.field public static final EFFECT_CONTRAST:Ljava/lang/String; = "android.media.effect.effects.ContrastEffect"

.field public static final EFFECT_CROP:Ljava/lang/String; = "android.media.effect.effects.CropEffect"

.field public static final EFFECT_CROSSPROCESS:Ljava/lang/String; = "android.media.effect.effects.CrossProcessEffect"

.field public static final EFFECT_DOCUMENTARY:Ljava/lang/String; = "android.media.effect.effects.DocumentaryEffect"

.field public static final EFFECT_DUOTONE:Ljava/lang/String; = "android.media.effect.effects.DuotoneEffect"

.field public static final EFFECT_FILLLIGHT:Ljava/lang/String; = "android.media.effect.effects.FillLightEffect"

.field public static final EFFECT_FISHEYE:Ljava/lang/String; = "android.media.effect.effects.FisheyeEffect"

.field public static final EFFECT_FLIP:Ljava/lang/String; = "android.media.effect.effects.FlipEffect"

.field public static final EFFECT_GRAIN:Ljava/lang/String; = "android.media.effect.effects.GrainEffect"

.field public static final EFFECT_GRAYSCALE:Ljava/lang/String; = "android.media.effect.effects.GrayscaleEffect"

.field public static final EFFECT_IDENTITY:Ljava/lang/String; = "IdentityEffect"

.field public static final EFFECT_LOMOISH:Ljava/lang/String; = "android.media.effect.effects.LomoishEffect"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "android.media.effect.effects.NegativeEffect"

.field private static final EFFECT_PACKAGES:[Ljava/lang/String;

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "android.media.effect.effects.PosterizeEffect"

.field public static final EFFECT_REDEYE:Ljava/lang/String; = "android.media.effect.effects.RedEyeEffect"

.field public static final EFFECT_ROTATE:Ljava/lang/String; = "android.media.effect.effects.RotateEffect"

.field public static final EFFECT_SATURATE:Ljava/lang/String; = "android.media.effect.effects.SaturateEffect"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "android.media.effect.effects.SepiaEffect"

.field public static final EFFECT_SHARPEN:Ljava/lang/String; = "android.media.effect.effects.SharpenEffect"

.field public static final EFFECT_STRAIGHTEN:Ljava/lang/String; = "android.media.effect.effects.StraightenEffect"

.field public static final EFFECT_TEMPERATURE:Ljava/lang/String; = "android.media.effect.effects.ColorTemperatureEffect"

.field public static final EFFECT_TINT:Ljava/lang/String; = "android.media.effect.effects.TintEffect"

.field public static final EFFECT_VIGNETTE:Ljava/lang/String; = "android.media.effect.effects.VignetteEffect"


# instance fields
.field private mEffectContext:Landroid/media/effect/EffectContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.media.effect.effects."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/effect/EffectContext;)V
    .locals 0
    .param p1, "effectContext"    # Landroid/media/effect/EffectContext;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 428
    return-void
.end method

.method private static getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 471
    .local v3, "effectClass":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 474
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    sget-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 476
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 481
    if-eqz v3, :cond_1

    .line 485
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 477
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 474
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 7
    .param p1, "effectClass"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 491
    :try_start_0
    const-class v4, Landroid/media/effect/Effect;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    const/4 v2, 0x0

    .line 500
    .local v2, "effectConstructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/media/effect/EffectContext;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 507
    const/4 v1, 0x0

    .line 509
    .local v1, "effect":Landroid/media/effect/Effect;
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "effect":Landroid/media/effect/Effect;
    check-cast v1, Landroid/media/effect/Effect;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 515
    .restart local v1    # "effect":Landroid/media/effect/Effect;
    return-object v1

    .line 492
    .end local v1    # "effect":Landroid/media/effect/Effect;
    .end local v2    # "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to allocate effect \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' which is not a subclass of Effect!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 501
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "effectConstructor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The effect class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "the required constructor."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 510
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 511
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There was an error constructing the effect \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isEffectSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "effectName"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {p0}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 4
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {p1}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 446
    .local v0, "effectClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 447
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate unknown effect \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_0
    invoke-direct {p0, v0, p1}, Landroid/media/effect/EffectFactory;->instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    return-object v1
.end method
