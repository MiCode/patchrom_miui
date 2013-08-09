.class public Lcom/android/settings/TimerView;
.super Landroid/widget/FrameLayout;
.source "TimerView.java"


# instance fields
.field private mBmpHour:Landroid/graphics/Bitmap;

.field private mBmpMinute:Landroid/graphics/Bitmap;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mHalfHeight:I

.field private mHalfWidth:I

.field private mHeight:I

.field private mHourIV:Landroid/widget/ImageView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMinuteIV:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0400be

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TimerView;->mBmpMinute:Landroid/graphics/Bitmap;

    .line 53
    iget-object v1, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/TimerView;->mWidth:I

    .line 54
    iget-object v1, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/TimerView;->mHeight:I

    .line 55
    iget v1, p0, Lcom/android/settings/TimerView;->mWidth:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/TimerView;->mHalfWidth:I

    .line 56
    iget v1, p0, Lcom/android/settings/TimerView;->mHeight:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/TimerView;->mHalfHeight:I

    .line 58
    const v1, 0x7f0901d0

    invoke-virtual {p0, v1}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/TimerView;->mTime:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/TimerView;->mDate:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0901d2

    invoke-virtual {p0, v1}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/TimerView;->mHourIV:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f0901d3

    invoke-virtual {p0, v1}, Lcom/android/settings/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/TimerView;->mMinuteIV:Landroid/widget/ImageView;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    .line 64
    return-void
.end method


# virtual methods
.method public setTimer(Ljava/lang/Long;)V
    .locals 17
    .parameter "time"

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 70
    .local v10, hour:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 71
    .local v12, minuts:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 72
    .local v14, seconds:I
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 76
    .local v16, year:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    .line 77
    .local v13, month:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 78
    .local v9, day:I
    const-string v1, "%d.%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 82
    .local v11, hourV:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v11, 0x1e

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/TimerView;->mHalfHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/TimerView;->mHalfWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/TimerView;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/TimerView;->mHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 85
    .local v8, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mHourIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v12, 0x6

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/TimerView;->mHalfHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/TimerView;->mHalfWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mBmpMinute:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/TimerView;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/TimerView;->mHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/TimerView;->mMinuteIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method
