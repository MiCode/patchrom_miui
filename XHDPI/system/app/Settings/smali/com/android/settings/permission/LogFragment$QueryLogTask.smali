.class Lcom/android/settings/permission/LogFragment$QueryLogTask;
.super Landroid/os/AsyncTask;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/LogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryLogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/LogFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/permission/LogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/permission/LogFragment$QueryLogTask;-><init>(Lcom/android/settings/permission/LogFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/permission/LogFragment$QueryLogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .parameter "params"

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 133
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 134
    .local v6, applicationInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v6, :cond_0

    .line 135
    const/16 v17, 0x0

    .line 184
    :goto_0
    return-object v17

    .line 137
    :cond_0
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v16, uid2AppName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 139
    .local v5, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 143
    invoke-virtual {v5, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, appName:Ljava/lang/String;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 147
    .end local v4           #appName:Ljava/lang/String;
    .end local v5           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v9, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v9}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 148
    .local v9, eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide v19, 0x9a7ec800L

    sub-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 150
    iget-object v0, v9, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gez v17, :cond_3

    .line 151
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 154
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    move-object/from16 v17, v0

    const-string v18, "timestamp"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Lcom/lbe/security/service/privacy/HIPSService;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 155
    .local v11, eventLogList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/EventLog;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v18}, Lcom/android/settings/permission/LogFragment;->access$202(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 158
    const/4 v7, 0x0

    .line 159
    .local v7, currentDatePos:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 160
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lbe/security/bean/EventLog;

    invoke-virtual/range {v17 .. v17}, Lcom/lbe/security/bean/EventLog;->getPkg()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    .restart local v4       #appName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 159
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 165
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v18, v0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lbe/security/bean/EventLog;

    invoke-virtual/range {v17 .. v17}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v19

    const-string v17, "yyyy-MM-dd"

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/permission/LogFragment;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v18, v0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lbe/security/bean/EventLog;

    invoke-virtual/range {v17 .. v17}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v19

    const-string v17, "HH:mm"

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/permission/LogFragment;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 168
    .local v15, time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 169
    :cond_5
    new-instance v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    invoke-direct {v10}, Lcom/android/settings/permission/LogFragment$EventLogInfo;-><init>()V

    .line 170
    .local v10, eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iput-object v8, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    .line 171
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .line 176
    .end local v10           #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    :cond_6
    new-instance v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    invoke-direct {v10}, Lcom/android/settings/permission/LogFragment$EventLogInfo;-><init>()V

    .line 177
    .restart local v10       #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lbe/security/bean/EventLog;

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    .line 178
    iput-object v15, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    .line 179
    iput v7, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mDatePos:I

    .line 180
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    .line 181
    iput-object v4, v10, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mAppName:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 184
    .end local v4           #appName:Ljava/lang/String;
    .end local v8           #date:Ljava/lang/String;
    .end local v10           #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    .end local v15           #time:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/permission/LogFragment$QueryLogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    invoke-static {v0}, Lcom/android/settings/permission/LogFragment;->access$300(Lcom/android/settings/permission/LogFragment;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    new-instance v1, Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    iget-object v2, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    iget-object v3, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;-><init>(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)V

    #setter for: Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    invoke-static {v0, v1}, Lcom/android/settings/permission/LogFragment;->access$302(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$PermLogAdapter;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    .line 195
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/permission/LogFragment;->access$400(Lcom/android/settings/permission/LogFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    invoke-static {v1}, Lcom/android/settings/permission/LogFragment;->access$300(Lcom/android/settings/permission/LogFragment;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/permission/LogFragment;->mQueryLogTask:Lcom/android/settings/permission/LogFragment$QueryLogTask;
    invoke-static {v0, v1}, Lcom/android/settings/permission/LogFragment;->access$502(Lcom/android/settings/permission/LogFragment;Lcom/android/settings/permission/LogFragment$QueryLogTask;)Lcom/android/settings/permission/LogFragment$QueryLogTask;

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    invoke-static {v0}, Lcom/android/settings/permission/LogFragment;->access$300(Lcom/android/settings/permission/LogFragment;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/permission/LogFragment;->access$200(Lcom/android/settings/permission/LogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->setPermLogList(Ljava/util/ArrayList;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$QueryLogTask;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;
    invoke-static {v0}, Lcom/android/settings/permission/LogFragment;->access$300(Lcom/android/settings/permission/LogFragment;)Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
