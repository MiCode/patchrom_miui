.class public abstract Landroid/filterfw/core/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field static final STATUS_ERROR:I = 0x6

.field static final STATUS_FINISHED:I = 0x5

.field static final STATUS_PREINIT:I = 0x0

.field static final STATUS_PREPARED:I = 0x2

.field static final STATUS_PROCESSING:I = 0x3

.field static final STATUS_RELEASED:I = 0x7

.field static final STATUS_SLEEPING:I = 0x4

.field static final STATUS_UNPREPARED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Filter"


# instance fields
.field private mCurrentTimestamp:J

.field private mFramesToRelease:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mFramesToSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mInputCount:I

.field private mInputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOpen:Z

.field private mLogVerbose:Z

.field private mName:Ljava/lang/String;

.field private mOutputCount:I

.field private mOutputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepDelay:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Landroid/filterfw/core/Filter;->mInputCount:I

    .line 56
    iput v0, p0, Landroid/filterfw/core/Filter;->mOutputCount:I

    .line 64
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 65
    iput-boolean v1, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 74
    iput-object p1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToSet:Ljava/util/HashMap;

    .line 77
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 79
    const-string v0, "Filter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    .line 80
    return-void
.end method

.method private final addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 12
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 563
    .local v3, "filterClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v1, v6

    .line 564
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v9, Landroid/filterfw/core/GenerateFinalPort;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 565
    check-cast v4, Landroid/filterfw/core/GenerateFinalPort;

    .line 566
    .local v4, "generator":Landroid/filterfw/core/GenerateFinalPort;
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 567
    .local v8, "name":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v5

    .line 568
    .local v5, "hasDefault":Z
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v2, v5, v9}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 569
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 570
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Landroid/filterfw/core/Filter;->setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v4    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    .end local v5    # "hasDefault":Z
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 566
    .restart local v4    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    :cond_1
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 572
    .restart local v5    # "hasDefault":Z
    .restart local v8    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v9

    if-nez v9, :cond_0

    .line 573
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No value specified for final input port \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' of filter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 578
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "generator":Landroid/filterfw/core/GenerateFinalPort;
    .end local v5    # "hasDefault":Z
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final addAnnotatedPorts()V
    .locals 12

    .prologue
    .line 581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 583
    .local v4, "filterClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v3, v1, v8

    .line 584
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v11, Landroid/filterfw/core/GenerateFieldPort;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    move-object v5, v0

    .line 585
    check-cast v5, Landroid/filterfw/core/GenerateFieldPort;

    .line 586
    .local v5, "generator":Landroid/filterfw/core/GenerateFieldPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V

    .line 583
    .end local v5    # "generator":Landroid/filterfw/core/GenerateFieldPort;
    .end local v8    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_0

    .line 587
    :cond_1
    const-class v11, Landroid/filterfw/core/GenerateProgramPort;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v5, v0

    .line 588
    check-cast v5, Landroid/filterfw/core/GenerateProgramPort;

    .line 589
    .local v5, "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    goto :goto_1

    .line 590
    .end local v5    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    :cond_2
    const-class v11, Landroid/filterfw/core/GenerateProgramPorts;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v6, v0

    .line 591
    check-cast v6, Landroid/filterfw/core/GenerateProgramPorts;

    .line 592
    .local v6, "generators":Landroid/filterfw/core/GenerateProgramPorts;
    invoke-interface {v6}, Landroid/filterfw/core/GenerateProgramPorts;->value()[Landroid/filterfw/core/GenerateProgramPort;

    move-result-object v2

    .local v2, "arr$":[Landroid/filterfw/core/GenerateProgramPort;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_0

    aget-object v5, v2, v7

    .line 593
    .restart local v5    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    .line 592
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 597
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Landroid/filterfw/core/GenerateProgramPort;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "generator":Landroid/filterfw/core/GenerateProgramPort;
    .end local v6    # "generators":Landroid/filterfw/core/GenerateProgramPorts;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .restart local v8    # "i$":I
    :cond_3
    return-void
.end method

.method private final addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "generator"    # Landroid/filterfw/core/GenerateFieldPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 600
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->hasDefault()Z

    move-result v0

    .line 602
    .local v0, "hasDefault":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 603
    return-void

    .line 600
    .end local v0    # "hasDefault":Z
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V
    .locals 6
    .param p1, "generator"    # Landroid/filterfw/core/GenerateProgramPort;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 606
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->name()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v1

    .line 609
    .local v2, "varName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->type()Ljava/lang/Class;

    move-result-object v4

    .line 610
    .local v4, "varType":Ljava/lang/Class;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->hasDefault()Z

    move-result v5

    .local v5, "hasDefault":Z
    move-object v0, p0

    move-object v3, p2

    .line 611
    invoke-virtual/range {v0 .. v5}, Landroid/filterfw/core/Filter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V

    .line 612
    return-void

    .line 607
    .end local v2    # "varName":Ljava/lang/String;
    .end local v4    # "varType":Ljava/lang/Class;
    .end local v5    # "hasDefault":Z
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private final closePorts()V
    .locals 6

    .prologue
    .line 685
    iget-boolean v3, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "Filter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing all ports on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 687
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->close()V

    goto :goto_0

    .line 689
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 690
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->close()V

    goto :goto_1

    .line 692
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method private final filterMustClose()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 695
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 696
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->filterMustClose()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v4, :cond_1

    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must close due to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    :goto_0
    return v3

    .line 701
    :cond_2
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 702
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->filterMustClose()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 703
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v4, :cond_1

    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must close due to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    .line 550
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    .line 551
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 552
    return-void
.end method

.method private final initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 0
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 555
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->addAnnotatedPorts()V

    .line 556
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->setupPorts()V

    .line 557
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V

    .line 558
    return-void
.end method

.method private final inputConditionsMet()Z
    .locals 5

    .prologue
    .line 665
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 666
    .local v1, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input condition not met: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    const/4 v2, 0x0

    .line 671
    .end local v1    # "port":Landroid/filterfw/core/FilterPort;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final isAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filterName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 90
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .local v2, "filterClass":Ljava/lang/Class;
    :try_start_1
    const-class v4, Landroid/filterfw/core/Filter;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    const/4 v3, 0x1

    .end local v2    # "filterClass":Ljava/lang/Class;
    :goto_0
    return v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "filterClass":Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method private final outputConditionsMet()Z
    .locals 5

    .prologue
    .line 675
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 676
    .local v1, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output condition not met: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1
    const/4 v2, 0x0

    .line 681
    .end local v1    # "port":Landroid/filterfw/core/FilterPort;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final releasePulledFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 658
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 659
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 661
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 662
    return-void
.end method

.method private final setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 621
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting immediate value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 623
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 624
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/filterfw/core/SimpleFrame;->wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 625
    return-void
.end method

.method private final setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V
    .locals 4
    .param p1, "values"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 618
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private final transferInputFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 628
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 629
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 631
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method private final wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 7
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 634
    invoke-static {p2, v4}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 635
    .local v1, "inputFormat":Landroid/filterfw/core/MutableFrameFormat;
    if-nez p2, :cond_0

    .line 638
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 639
    .local v3, "portFormat":Landroid/filterfw/core/FrameFormat;
    if-nez v3, :cond_1

    move-object v2, v5

    .line 640
    .local v2, "portClass":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 644
    .end local v2    # "portClass":Ljava/lang/Class;
    .end local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    instance-of v6, p2, Ljava/lang/Number;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/lang/Boolean;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/io/Serializable;

    if-eqz v6, :cond_2

    .line 650
    .local v4, "shouldSerialize":Z
    :goto_1
    if-eqz v4, :cond_3

    new-instance v0, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v0, v1, v5}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 653
    .local v0, "frame":Landroid/filterfw/core/Frame;
    :goto_2
    invoke-virtual {v0, p2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 654
    return-object v0

    .line 639
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local v4    # "shouldSerialize":Z
    .restart local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_1
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 644
    .end local v3    # "portFormat":Landroid/filterfw/core/FrameFormat;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 650
    .restart local v4    # "shouldSerialize":Z
    :cond_3
    new-instance v0, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v0, v1, v5}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    goto :goto_2
.end method


# virtual methods
.method protected addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "hasDefault"    # Z
    .param p4, "isFinal"    # Z

    .prologue
    const/4 v5, 0x1

    .line 360
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 363
    if-eqz p4, :cond_1

    new-instance v0, Landroid/filterfw/core/FinalPort;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FinalPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 368
    .local v0, "fieldPort":Landroid/filterfw/core/InputPort;
    :goto_0
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 371
    .local v1, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 374
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void

    .line 363
    .end local v0    # "fieldPort":Landroid/filterfw/core/InputPort;
    .end local v1    # "format":Landroid/filterfw/core/MutableFrameFormat;
    :cond_1
    new-instance v0, Landroid/filterfw/core/FieldPort;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    goto :goto_0
.end method

.method protected addInputPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 304
    return-void
.end method

.method protected addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatMask"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 315
    new-instance v0, Landroid/filterfw/core/StreamPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 316
    .local v0, "port":Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 319
    return-void
.end method

.method protected addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "outputName"    # Ljava/lang/String;
    .param p2, "inputName"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 350
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-virtual {p0, p2}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/OutputPort;->setBasePort(Landroid/filterfw/core/InputPort;)V

    .line 352
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method protected addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 331
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 332
    .local v0, "port":Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 334
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method protected addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "varName"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "varType"    # Ljava/lang/Class;
    .param p5, "hasDefault"    # Z

    .prologue
    const/4 v7, 0x1

    .line 383
    invoke-virtual {p3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    new-instance v0, Landroid/filterfw/core/ProgramPort;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/core/ProgramPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 389
    .local v0, "programPort":Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    invoke-static {p4, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    .line 392
    .local v6, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v6}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 395
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method final declared-synchronized canProcess()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 500
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if can process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    iget v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 502
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->inputConditionsMet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/filterfw/core/Filter;->outputConditionsMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 504
    :cond_1
    monitor-exit p0

    return v0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final clearInputs()V
    .locals 3

    .prologue
    .line 518
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 519
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->clear()V

    goto :goto_0

    .line 521
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method final clearOutputs()V
    .locals 3

    .prologue
    .line 524
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 525
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->clear()V

    goto :goto_0

    .line 527
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_0
    return-void
.end method

.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 190
    return-void
.end method

.method protected closeOutputPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    .line 400
    return-void
.end method

.method protected delayNextProcess(I)V
    .locals 1
    .param p1, "millisecs"    # I

    .prologue
    .line 165
    iput p1, p0, Landroid/filterfw/core/Filter;->mSleepDelay:I

    .line 166
    const/4 v0, 0x4

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 167
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 270
    return-void
.end method

.method public getFilterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 177
    .local v0, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    return-object v1
.end method

.method public final getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to access input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before Filter has been initialized!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/InputPort;

    .line 229
    .local v0, "result":Landroid/filterfw/core/InputPort;
    if-nez v0, :cond_1

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    return-object v0
.end method

.method final getInputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberOfConnectedInputs()I
    .locals 4

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "c":I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/InputPort;

    .line 198
    .local v2, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfConnectedOutputs()I
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "c":I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 208
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfInputs()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getNumberOfOutputs()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;
    .locals 4
    .param p1, "portName"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to access output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before Filter has been initialized!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/OutputPort;

    .line 242
    .local v0, "result":Landroid/filterfw/core/OutputPort;
    if-nez v0, :cond_1

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1
    return-object v0
.end method

.method final getOutputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getSleepDelay()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0xfa

    return v0
.end method

.method final declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 131
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 132
    return-void
.end method

.method protected initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "program"    # Landroid/filterfw/core/Program;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 285
    if-eqz p1, :cond_1

    .line 286
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 287
    .local v1, "inputPort":Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 288
    invoke-virtual {v1, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "inputPort":Landroid/filterfw/core/InputPort;
    :cond_1
    return-void
.end method

.method public final varargs initWithAssignmentList([Ljava/lang/Object;)V
    .locals 1
    .param p1, "keyValues"    # [Ljava/lang/Object;

    .prologue
    .line 124
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 125
    .local v0, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 127
    return-void
.end method

.method public final initWithAssignmentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "assignments"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    new-instance v2, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v2}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    invoke-virtual {v2, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v1

    .line 117
    .local v1, "valueMap":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    .end local v1    # "valueMap":Landroid/filterfw/core/KeyValueMap;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .param p1, "valueMap"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 108
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 112
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    return v0
.end method

.method final notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 530
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 531
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Filter;->fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V

    .line 533
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 181
    return-void
.end method

.method final openOutputs()V
    .locals 5

    .prologue
    .line 509
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening all output ports on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 511
    .local v1, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->open()V

    goto :goto_0

    .line 515
    .end local v1    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method protected parametersUpdated(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "updated":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method final declared-synchronized performClose(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 483
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 485
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 486
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->close(Landroid/filterfw/core/FilterContext;)V

    .line 487
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->closePorts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_1
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized performOpen(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 445
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-nez v0, :cond_5

    .line 446
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 447
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->prepare(Landroid/filterfw/core/FilterContext;)V

    .line 449
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 451
    :cond_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-ne v0, v3, :cond_3

    .line 452
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->open(Landroid/filterfw/core/FilterContext;)V

    .line 454
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 456
    :cond_3
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-eq v0, v4, :cond_4

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was brought into invalid state during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "opening (state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :cond_5
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized performProcess(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already torn down!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 468
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->transferInputFrames(Landroid/filterfw/core/FilterContext;)V

    .line 469
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 470
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performOpen(Landroid/filterfw/core/FilterContext;)V

    .line 472
    :cond_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 474
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->process(Landroid/filterfw/core/FilterContext;)V

    .line 475
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->releasePulledFrames(Landroid/filterfw/core/FilterContext;)V

    .line 476
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->filterMustClose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :cond_3
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized performTearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v1, 0x7

    .line 492
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    .line 493
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-eq v0, v1, :cond_0

    .line 494
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 495
    const/4 v0, 0x7

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 159
    return-void
.end method

.method public abstract process(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected final pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->pullFrame()Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 259
    .local v0, "result":Landroid/filterfw/core/Frame;
    iget-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 261
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default-setting current timestamp from input port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    return-object v0
.end method

.method final declared-synchronized pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 537
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 540
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->pushFrame(Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 536
    .end local v0    # "port":Landroid/filterfw/core/FilterPort;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 251
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default-setting output Frame timestamp on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {p2, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    .line 255
    return-void
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 148
    .local v0, "port":Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 151
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 152
    return-void
.end method

.method public final setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 156
    return-void
.end method

.method protected setWaitsOnInputPort(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setBlocking(Z)V

    .line 411
    return-void
.end method

.method protected setWaitsOnOutputPort(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "waits"    # Z

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setBlocking(Z)V

    .line 421
    return-void
.end method

.method public abstract setupPorts()V
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transferInputPortFrame(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    .line 278
    return-void
.end method

.method final declared-synchronized unsetStatus(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
