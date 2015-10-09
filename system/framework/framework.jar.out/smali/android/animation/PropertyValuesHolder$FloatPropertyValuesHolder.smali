.class Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

.field private mFloatProperty:Landroid/util/FloatProperty;

.field mJniSetter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/FloatKeyframeSet;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframeSet"    # Landroid/animation/FloatKeyframeSet;

    .prologue
    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    .line 900
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 901
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 902
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

    .line 903
    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    .line 906
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [F

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    .line 915
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 916
    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    .line 919
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/FloatKeyframeSet;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframeSet"    # Landroid/animation/FloatKeyframeSet;

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    .line 893
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 894
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 895
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

    .line 896
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 909
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    .line 910
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 911
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 929
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 930
    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    .prologue
    .line 939
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 940
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v1, Landroid/animation/FloatKeyframeSet;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

    .line 941
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

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
    .line 880
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 953
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    if-eqz v1, :cond_1

    .line 954
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v1, p1, v2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_2

    .line 958
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 961
    :cond_2
    iget v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-eqz v1, :cond_3

    .line 962
    iget v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    iget v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;IF)V
    invoke-static {p1, v1, v2}, Landroid/animation/PropertyValuesHolder;->access$400(Ljava/lang/Object;IF)V

    goto :goto_0

    .line 965
    :cond_3
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 967
    :try_start_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 968
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 923
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 924
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/FloatKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Landroid/animation/FloatKeyframeSet;

    .line 925
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 979
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v3, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 985
    sget-object v3, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 986
    .local v2, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    .line 987
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 988
    .local v0, "mJniSetterInteger":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 989
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    .line 992
    .end local v0    # "mJniSetterInteger":Ljava/lang/Integer;
    :cond_2
    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-nez v3, :cond_4

    .line 993
    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "methodName":Ljava/lang/String;
    # invokes: Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->access$500(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    .line 995
    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-eqz v3, :cond_4

    .line 996
    if-nez v2, :cond_3

    .line 997
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 998
    .restart local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_3
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1010
    .end local v2    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    iget v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:I

    if-nez v3, :cond_0

    .line 1012
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v3

    .line 1008
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method
