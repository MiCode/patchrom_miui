.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/test/InstrumentationTestCase;
    .param p1, "x1"    # Ljava/lang/reflect/Method;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .locals 1
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 206
    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;IZ)V
    .locals 7
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 214
    .local v3, "runCount":I
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v1, 0x0

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v2, "iterations":Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 231
    .end local v2    # "iterations":Landroid/os/Bundle;
    :cond_1
    :goto_0
    if-ge v3, p2, :cond_2

    if-nez p3, :cond_0

    if-nez v1, :cond_0

    .line 233
    :cond_2
    if-eqz v1, :cond_4

    .line 234
    throw v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 218
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v2    # "iterations":Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "iterations":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    move-object v1, v0

    .line 223
    add-int/lit8 v3, v3, 0x1

    .line 225
    if-eqz p3, :cond_1

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v2    # "iterations":Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "iterations":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    .line 225
    if-eqz p3, :cond_3

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v2    # "iterations":Landroid/os/Bundle;
    const-string v5, "currentiterations"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 229
    .end local v2    # "iterations":Landroid/os/Bundle;
    :cond_3
    throw v4

    .line 236
    :cond_4
    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 62
    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    .line 48
    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x10000000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;, "TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 121
    return-object v0
.end method

.method protected runTest()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "fName":Ljava/lang/String;
    invoke-static {v7}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 157
    const/4 v9, 0x0

    .line 163
    .local v9, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 168
    :goto_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" should be public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    .line 172
    :cond_0
    const/4 v10, 0x1

    .line 173
    .local v10, "runCount":I
    const/4 v8, 0x0

    .line 174
    .local v8, "isRepetitive":Z
    const-class v0, Landroid/test/FlakyTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-class v0, Landroid/test/FlakyTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/test/FlakyTest;

    invoke-interface {v0}, Landroid/test/FlakyTest;->tolerance()I

    move-result v10

    .line 181
    :cond_1
    :goto_1
    const-class v0, Landroid/test/UiThreadTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    move v3, v10

    .line 183
    .local v3, "tolerance":I
    move v4, v8

    .line 184
    .local v4, "repetitive":Z
    move-object v2, v9

    .line 185
    .local v2, "testMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Throwable;

    .line 186
    .local v5, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v11

    new-instance v0, Landroid/test/InstrumentationTestCase$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V

    invoke-virtual {v11, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 195
    aget-object v0, v5, v12

    if-eqz v0, :cond_4

    .line 196
    aget-object v0, v5, v12

    throw v0

    .line 164
    .end local v2    # "testMethod":Ljava/lang/reflect/Method;
    .end local v3    # "tolerance":I
    .end local v4    # "repetitive":Z
    .end local v5    # "exceptions":[Ljava/lang/Throwable;
    .end local v8    # "isRepetitive":Z
    .end local v10    # "runCount":I
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v8    # "isRepetitive":Z
    .restart local v10    # "runCount":I
    :cond_2
    const-class v0, Landroid/test/RepetitiveTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-class v0, Landroid/test/RepetitiveTest;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroid/test/RepetitiveTest;

    invoke-interface {v0}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v10

    .line 178
    const/4 v8, 0x1

    goto :goto_1

    .line 199
    :cond_3
    invoke-direct {p0, v9, v10, v8}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 201
    :cond_4
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Throwable;

    .line 135
    .local v0, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 144
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 145
    aget-object v1, v0, v3

    throw v1

    .line 147
    :cond_0
    return-void
.end method

.method public sendKeys(Ljava/lang/String;)V
    .locals 14
    .param p1, "keysSequence"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "keys":[Ljava/lang/String;
    array-length v0, v9

    .line 251
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 253
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 254
    aget-object v5, v9, v2

    .line 255
    .local v5, "key":Ljava/lang/String;
    const/16 v11, 0x2a

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 259
    .local v10, "repeater":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    const/4 v8, 0x1

    .line 265
    .local v8, "keyCount":I
    :goto_1
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 266
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v8, :cond_2

    .line 271
    :try_start_0
    const-class v11, Landroid/view/KeyEvent;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 272
    .local v7, "keyCodeField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 274
    .local v6, "keyCode":I
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 259
    .end local v4    # "j":I
    .end local v6    # "keyCode":I
    .end local v7    # "keyCodeField":Ljava/lang/reflect/Field;
    .end local v8    # "keyCount":I
    :cond_1
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto :goto_1

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid repeat count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .restart local v4    # "j":I
    .restart local v8    # "keyCount":I
    :catch_1
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 283
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "ActivityTestCase"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown keycode: KEYCODE_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 290
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "j":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "keyCount":I
    .end local v10    # "repeater":I
    :cond_3
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 291
    return-void

    .line 275
    .restart local v4    # "j":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "keyCode":I
    .restart local v7    # "keyCodeField":Ljava/lang/reflect/Field;
    .restart local v8    # "keyCount":I
    .restart local v10    # "repeater":I
    :catch_3
    move-exception v11

    goto :goto_3
.end method

.method public varargs sendKeys([I)V
    .locals 4
    .param p1, "keys"    # [I

    .prologue
    .line 300
    array-length v0, p1

    .line 301
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 303
    .local v2, "instrumentation":Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 305
    :try_start_0
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 314
    return-void

    .line 306
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public varargs sendRepeatedKeys([I)V
    .locals 8
    .param p1, "keys"    # [I

    .prologue
    .line 324
    array-length v0, p1

    .line 325
    .local v0, "count":I
    and-int/lit8 v6, v0, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 326
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The size of the keys array must be a multiple of 2"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 332
    .local v2, "instrumentation":Landroid/app/Instrumentation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 333
    aget v5, p1, v1

    .line 334
    .local v5, "keyCount":I
    add-int/lit8 v6, v1, 0x1

    aget v4, p1, v6

    .line 335
    .local v4, "keyCode":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 337
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 332
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 346
    .end local v3    # "j":I
    .end local v4    # "keyCode":I
    .end local v5    # "keyCount":I
    :cond_2
    invoke-virtual {v2}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 347
    return-void

    .line 338
    .restart local v3    # "j":I
    .restart local v4    # "keyCode":I
    .restart local v5    # "keyCount":I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 359
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 360
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 361
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 362
    return-void
.end method
