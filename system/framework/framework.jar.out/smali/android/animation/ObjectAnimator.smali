.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 165
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 188
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 189
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 190
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 177
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private hasSameTargetAndProperties(Landroid/animation/Animator;)Z
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    .line 404
    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 405
    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 406
    .local v3, "theirValues":[Landroid/animation/PropertyValuesHolder;
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    array-length v6, v3

    if-ne v4, v6, :cond_3

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 409
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v4, v0

    .line 410
    .local v1, "pvhMine":Landroid/animation/PropertyValuesHolder;
    aget-object v2, v3, v0

    .line 411
    .local v2, "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 419
    .end local v0    # "i":I
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :goto_1
    return v4

    .line 408
    .restart local v0    # "i":I
    .restart local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .restart local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_3
    move v4, v5

    .line 419
    goto :goto_1
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 265
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 266
    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 245
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 247
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 226
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 227
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 207
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 209
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 312
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 314
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 288
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 291
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 336
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 337
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iput-object p0, v0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 338
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 339
    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 569
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 570
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 571
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 578
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 138
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 151
    :cond_0
    :goto_0
    return-object v1

    .line 139
    :cond_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 143
    if-nez v0, :cond_3

    .line 144
    const-string v1, ""

    .line 148
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    .prologue
    .line 482
    iget-boolean v2, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 485
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 486
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 487
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 491
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    .line 401
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1

    .line 363
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 368
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .param p1, "values"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1

    .line 348
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 377
    :cond_0
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1

    .line 378
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_1
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 5
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    .line 106
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 108
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 114
    :cond_1
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 116
    iput-boolean v4, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 117
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    .line 84
    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 91
    iput-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    .line 92
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 525
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    .line 526
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 527
    .local v0, "oldTarget":Ljava/lang/Object;
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 528
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 534
    .end local v0    # "oldTarget":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 532
    .restart local v0    # "oldTarget":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 548
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 549
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 550
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    .line 539
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 540
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 541
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 425
    sget-object v4, Landroid/animation/ObjectAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 426
    .local v1, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v1, :cond_5

    .line 427
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 428
    .local v3, "numAnims":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 429
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 431
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 428
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 437
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 438
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    .line 439
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 440
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 437
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 445
    :cond_3
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 446
    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 447
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_4

    .line 448
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 449
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 446
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 465
    .end local v2    # "i":I
    .end local v3    # "numAnims":I
    :cond_5
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 466
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
