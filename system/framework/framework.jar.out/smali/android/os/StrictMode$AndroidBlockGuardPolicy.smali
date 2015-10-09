.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "policyMask"    # I

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1088
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 23
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 1265
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1266
    :cond_0
    const-string v20, "StrictMode"

    const-string/jumbo v21, "unexpected null stacktrace"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_1
    :goto_0
    return-void

    .line 1270
    :cond_2
    # getter for: Landroid/os/StrictMode;->LOG_V:Z
    invoke-static {}, Landroid/os/StrictMode;->access$800()Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleViolation; policy="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1273
    # getter for: Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid/os/StrictMode;->access$900()Ljava/lang/ThreadLocal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 1274
    .local v18, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v18, :cond_6

    .line 1275
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1276
    .restart local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    # getter for: Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid/os/StrictMode;->access$900()Ljava/lang/ThreadLocal;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1281
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/StrictMode$ViolationInfo;

    .line 1282
    .local v12, "previous":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v12, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    goto/16 :goto_0

    .line 1277
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "previous":Landroid/os/StrictMode$ViolationInfo;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    goto/16 :goto_0

    .line 1287
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1292
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v18    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1293
    .local v4, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v8, 0x0

    .line 1294
    .local v8, "lastViolationTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 1296
    .local v19, "vtime":Ljava/lang/Long;
    if-eqz v19, :cond_9

    .line 1297
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1302
    .end local v19    # "vtime":Ljava/lang/Long;
    :cond_9
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1303
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_e

    const-wide v14, 0x7fffffffffffffffL

    .line 1307
    .local v14, "timeSinceLastViolationMillis":J
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x10

    if-eqz v20, :cond_a

    const-wide/16 v20, 0x3e8

    cmp-long v20, v14, v20

    if-lez v20, :cond_a

    .line 1309
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 1310
    const-string v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "StrictMode policy violation; ~duration="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_a
    :goto_3
    const/16 v17, 0x0

    .line 1323
    .local v17, "violationMaskSubset":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x20

    if-eqz v20, :cond_b

    const-wide/16 v20, 0x7530

    cmp-long v20, v14, v20

    if-lez v20, :cond_b

    .line 1325
    or-int/lit8 v17, v17, 0x20

    .line 1328
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_c

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_c

    .line 1329
    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1332
    :cond_c
    if-eqz v17, :cond_12

    .line 1333
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    # invokes: Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->access$1000(Ljava/lang/String;)I

    move-result v16

    .line 1334
    .local v16, "violationBit":I
    or-int v17, v17, v16

    .line 1335
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v13

    .line 1337
    .local v13, "savedPolicyMask":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xbf0

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 1338
    .local v7, "justDropBox":Z
    :goto_4
    if-eqz v7, :cond_11

    .line 1345
    move/from16 v0, v17

    move-object/from16 v1, p1

    # invokes: Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    invoke-static {v0, v1}, Landroid/os/StrictMode;->access$1100(ILandroid/os/StrictMode$ViolationInfo;)V

    goto/16 :goto_0

    .line 1300
    .end local v7    # "justDropBox":Z
    .end local v10    # "now":J
    .end local v13    # "savedPolicyMask":I
    .end local v14    # "timeSinceLastViolationMillis":J
    .end local v16    # "violationBit":I
    .end local v17    # "violationMaskSubset":I
    :cond_d
    new-instance v20, Landroid/util/ArrayMap;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Landroid/util/ArrayMap;

    goto/16 :goto_1

    .line 1304
    .restart local v10    # "now":J
    :cond_e
    sub-long v14, v10, v8

    goto/16 :goto_2

    .line 1313
    .restart local v14    # "timeSinceLastViolationMillis":J
    :cond_f
    const-string v20, "StrictMode"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "StrictMode policy violation: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1337
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    .restart local v17    # "violationMaskSubset":I
    :cond_10
    const/4 v7, 0x0

    goto :goto_4

    .line 1355
    .restart local v7    # "justDropBox":Z
    :cond_11
    const/16 v20, 0x0

    :try_start_0
    # invokes: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static/range {v20 .. v20}, Landroid/os/StrictMode;->access$1200(I)V

    .line 1357
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v17

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    # invokes: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static {v13}, Landroid/os/StrictMode;->access$1200(I)V

    .line 1369
    .end local v7    # "justDropBox":Z
    .end local v13    # "savedPolicyMask":I
    .end local v16    # "violationBit":I
    :cond_12
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x40

    if-eqz v20, :cond_1

    .line 1370
    # invokes: Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->access$1300(Landroid/os/StrictMode$ViolationInfo;)V

    goto/16 :goto_0

    .line 1361
    .restart local v7    # "justDropBox":Z
    .restart local v13    # "savedPolicyMask":I
    .restart local v16    # "violationBit":I
    :catch_0
    move-exception v5

    .line 1362
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v20, "StrictMode"

    const-string v21, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    # invokes: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static {v13}, Landroid/os/StrictMode;->access$1200(I)V

    goto :goto_5

    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v20

    # invokes: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static {v13}, Landroid/os/StrictMode;->access$1200(I)V

    throw v20
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    const/4 v5, 0x1

    .line 1176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1194
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    iget v3, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    and-int/lit16 v3, v3, 0xbf0

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 1196
    :cond_0
    const/4 v3, -0x1

    iput v3, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1197
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1257
    :cond_1
    :goto_0
    return-void

    .line 1201
    :cond_2
    # getter for: Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid/os/StrictMode;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1202
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 1206
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 1214
    iget v3, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    # getter for: Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;
    invoke-static {}, Landroid/os/StrictMode;->access$600()Landroid/util/Singleton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowManager;

    move-object v2, v3

    .line 1216
    .local v2, "windowManager":Landroid/view/IWindowManager;
    :goto_1
    if-eqz v2, :cond_3

    .line 1218
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_3
    :goto_2
    # getter for: Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid/os/StrictMode;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    invoke-direct {v4, p0, v2, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1214
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1219
    .restart local v2    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    # invokes: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    .line 1122
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1123
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onNetwork()V
    .locals 2

    .prologue
    .line 1141
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 1145
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v1

    .line 1147
    :cond_2
    # invokes: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    .line 1151
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1152
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onReadFromDisk()V
    .locals 2

    .prologue
    .line 1128
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    # invokes: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    .line 1135
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1136
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onWriteToDisk()V
    .locals 2

    .prologue
    .line 1102
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    # invokes: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    .line 1109
    .local v0, "e":Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1110
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public setPolicyMask(I)V
    .locals 0
    .param p1, "policyMask"    # I

    .prologue
    .line 1156
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1157
    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 3
    .param p1, "e"    # Ldalvik/system/BlockGuard$BlockGuardPolicyException;

    .prologue
    .line 1165
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1166
    .local v0, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1167
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
