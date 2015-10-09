.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$1;,
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 75
    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimeView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 51
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 200
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 209
    :goto_0
    return-object v2

    .line 206
    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 216
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 217
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 80
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 81
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 83
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 86
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 91
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 92
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 99
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 100
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 101
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 102
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 103
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 104
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 105
    return-void
.end method

.method update()V
    .locals 25

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 193
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 115
    .local v13, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v17, v0

    .line 117
    .local v17, "time":Ljava/util/Date;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 118
    .local v15, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 119
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->second:I

    .line 121
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0xc

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 122
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 123
    .local v20, "twelveHoursBefore":J
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xc

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 124
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 125
    .local v18, "twelveHoursAfter":J
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->hour:I

    .line 126
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->minute:I

    .line 127
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 128
    .local v9, "midnightBefore":J
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 129
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 131
    .local v7, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 132
    .local v11, "nowMillis":J
    invoke-virtual {v15, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 133
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Landroid/text/format/Time;->second:I

    .line 134
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 138
    cmp-long v22, v11, v9

    if-ltz v22, :cond_1

    cmp-long v22, v11, v7

    if-ltz v22, :cond_2

    :cond_1
    cmp-long v22, v11, v20

    if-ltz v22, :cond_3

    cmp-long v22, v11, v18

    if-gez v22, :cond_3

    .line 140
    :cond_2
    const/4 v3, 0x0

    .line 150
    .local v3, "display":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 168
    .local v6, "format":Ljava/text/DateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    if-nez v3, :cond_6

    .line 174
    cmp-long v22, v18, v7

    if-lez v22, :cond_5

    .end local v18    # "twelveHoursAfter":J
    :goto_3
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 192
    .end local v20    # "twelveHoursBefore":J
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 193
    .local v4, "finish":J
    goto/16 :goto_0

    .line 144
    .end local v3    # "display":I
    .end local v4    # "finish":J
    .end local v6    # "format":Ljava/text/DateFormat;
    .end local v16    # "text":Ljava/lang/String;
    .restart local v18    # "twelveHoursAfter":J
    .restart local v20    # "twelveHoursBefore":J
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "display":I
    goto :goto_1

    .line 154
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 162
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "unknown display value: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 156
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v6

    .line 164
    .restart local v6    # "format":Ljava/text/DateFormat;
    :goto_5
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_2

    .line 159
    .end local v6    # "format":Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v6

    .line 160
    .restart local v6    # "format":Ljava/text/DateFormat;
    goto :goto_5

    .restart local v16    # "text":Ljava/lang/String;
    :cond_5
    move-wide/from16 v18, v7

    .line 174
    goto :goto_3

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v11

    if-gez v22, :cond_7

    .line 179
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .line 183
    :cond_7
    cmp-long v22, v20, v9

    if-gez v22, :cond_8

    .end local v20    # "twelveHoursBefore":J
    :goto_6
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .restart local v20    # "twelveHoursBefore":J
    :cond_8
    move-wide/from16 v20, v9

    goto :goto_6

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
