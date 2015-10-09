.class public Landroid/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$1;,
        Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Landroid/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Landroid/animation/KeyframeSet;

.field protected mProperty:Landroid/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    .line 80
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/util/Property;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 64
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 75
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 143
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/Property;
    .param p2, "x1"    # Landroid/animation/PropertyValuesHolder$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 64
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 75
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/animation/PropertyValuesHolder$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;IF)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;IF)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 734
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 740
    .end local p0    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 738
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 739
    .local v0, "firstLetter":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 380
    const/4 v5, 0x0

    .line 381
    .local v5, "returnVal":Ljava/lang/reflect/Method;
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v9}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "methodName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 383
    .local v0, "args":[Ljava/lang/Class;
    if-nez p3, :cond_2

    .line 385
    :try_start_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 416
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 417
    const-string v9, "PropertyValuesHolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v11}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "() with type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found on target class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v6, v5

    .line 422
    .end local v5    # "returnVal":Ljava/lang/reflect/Method;
    .local v6, "returnVal":Ljava/lang/reflect/Method;
    :goto_1
    return-object v6

    .line 390
    .end local v6    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v5    # "returnVal":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Class;

    .line 392
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 393
    sget-object v8, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 402
    .local v8, "typeVariants":[Ljava/lang/Class;
    :goto_2
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v7, v1, v2

    .line 403
    .local v7, "typeVariant":Ljava/lang/Class;
    const/4 v9, 0x0

    aput-object v7, v0, v9

    .line 405
    :try_start_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 407
    iput-object v7, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v5

    .line 408
    .end local v5    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v6    # "returnVal":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 394
    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "returnVal":Ljava/lang/reflect/Method;
    .end local v7    # "typeVariant":Ljava/lang/Class;
    .end local v8    # "typeVariants":[Ljava/lang/Class;
    .restart local v5    # "returnVal":Ljava/lang/reflect/Method;
    :cond_3
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 395
    sget-object v8, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .restart local v8    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 396
    .end local v8    # "typeVariants":[Ljava/lang/Class;
    :cond_4
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 397
    sget-object v8, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .restart local v8    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 399
    .end local v8    # "typeVariants":[Ljava/lang/Class;
    :cond_5
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Class;

    .line 400
    .restart local v8    # "typeVariants":[Ljava/lang/Class;
    const/4 v9, 0x0

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v10, v8, v9

    goto :goto_2

    .line 409
    .restart local v1    # "arr$":[Ljava/lang/Class;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v7    # "typeVariant":Ljava/lang/Class;
    :catch_0
    move-exception v9

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 386
    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "typeVariant":Ljava/lang/Class;
    .end local v8    # "typeVariants":[Ljava/lang/Class;
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method private static native nCallFloatMethod(Ljava/lang/Object;IF)V
.end method

.method private static native nCallIntMethod(Ljava/lang/Object;II)V
.end method

.method private static native nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I
.end method

.method private static native nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 175
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 153
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .prologue
    .line 280
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 281
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    instance-of v2, v0, Landroid/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 282
    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    .end local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/IntKeyframeSet;)V

    .line 290
    :goto_0
    return-object v1

    .line 283
    .restart local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Landroid/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 284
    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    .end local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 287
    .restart local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_1
    new-instance v1, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 288
    .local v1, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object v0, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 289
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .prologue
    .line 249
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 250
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    instance-of v2, v0, Landroid/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 251
    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    .end local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/IntKeyframeSet;)V

    .line 259
    :goto_0
    return-object v1

    .line 252
    .restart local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Landroid/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 253
    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    .end local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 256
    .restart local v0    # "keyframeSet":Landroid/animation/KeyframeSet;
    :cond_1
    new-instance v1, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object v0, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 258
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "property"    # Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 224
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 226
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 203
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 206
    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 475
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 476
    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v2, 0x0

    .line 444
    .local v2, "setterOrGetter":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 445
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 446
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_0

    .line 447
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    .line 449
    :cond_0
    if-nez v2, :cond_2

    .line 450
    invoke-direct {p0, p1, p3, p4}, Landroid/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 451
    if-nez v1, :cond_1

    .line 452
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    .restart local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_1
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_2
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 460
    return-object v2

    .line 458
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method private setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Landroid/animation/Keyframe;

    .prologue
    .line 537
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 541
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 543
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 544
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 555
    .end local v1    # "targetClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 660
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 661
    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder;
    .locals 3

    .prologue
    .line 584
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    .line 585
    .local v1, "newPVH":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 586
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 587
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v2}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 588
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v1    # "newPVH":Landroid/animation/PropertyValuesHolder;
    :goto_0
    return-object v1

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 631
    :cond_0
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/KeyframeSet;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 636
    :cond_1
    return-void

    .line 627
    :cond_2
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 604
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    :cond_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 610
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 1
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 649
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 650
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/KeyframeSet;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 651
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 326
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 327
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofFloat([F)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 328
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 308
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 309
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofInt([I)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 310
    return-void
.end method

.method public varargs setKeyframes([Landroid/animation/Keyframe;)V
    .locals 4
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .prologue
    .line 336
    array-length v2, p1

    .line 337
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe;

    .line 338
    .local v1, "keyframes":[Landroid/animation/Keyframe;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 340
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 343
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 359
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 360
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 361
    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 0
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    .line 691
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 692
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 679
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 680
    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 578
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, v0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v1, v1, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    .line 579
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 468
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "set"

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 469
    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 489
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v5, :cond_1

    .line 492
    :try_start_0
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v5, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 493
    .local v4, "testValue":Ljava/lang/Object;
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v5, v5, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    .line 494
    .local v2, "kf":Landroid/animation/Keyframe;
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 495
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v5, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "kf":Landroid/animation/Keyframe;
    .end local v4    # "testValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v5, "PropertyValuesHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such property ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on target object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Trying reflection instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 505
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 506
    .local v3, "targetClass":Ljava/lang/Class;
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    .line 507
    invoke-virtual {p0, v3}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 509
    :cond_2
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v5, v5, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    .line 510
    .restart local v2    # "kf":Landroid/animation/Keyframe;
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 511
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_5

    .line 512
    invoke-direct {p0, v3}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 513
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_5

    .line 527
    .end local v2    # "kf":Landroid/animation/Keyframe;
    .end local v3    # "targetClass":Ljava/lang/Class;
    :cond_4
    return-void

    .line 519
    .restart local v2    # "kf":Landroid/animation/Keyframe;
    .restart local v3    # "targetClass":Ljava/lang/Class;
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 520
    :catch_1
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, v0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    .line 567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    invoke-virtual {v1}, Landroid/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
