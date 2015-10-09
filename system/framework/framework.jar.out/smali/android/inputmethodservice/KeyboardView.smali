.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 133
    new-array v0, v3, [I

    sget v1, Lcom/android/internal/R$attr;->state_long_pressable:I

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 225
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 227
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    sget v0, Lcom/android/internal/R$attr;->keyboardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    const/4 v7, -0x1

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 150
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 177
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 178
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 179
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 198
    const/4 v7, -0x1

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 199
    const/4 v7, -0x1

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 202
    const/16 v7, 0xc

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 206
    const/4 v7, -0x1

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 210
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 212
    new-instance v7, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 217
    const/4 v7, 0x1

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 228
    sget v7, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 241
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 255
    new-instance v7, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 285
    sget-object v7, Landroid/R$styleable;->KeyboardView:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 289
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 293
    .local v3, "inflate":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 294
    .local v6, "previewLayout":I
    const/4 v4, 0x0

    .line 296
    .local v4, "keyTextSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 298
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 299
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 301
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 306
    :pswitch_1
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    .line 309
    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 310
    goto :goto_1

    .line 312
    :pswitch_3
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 315
    :pswitch_4
    const/16 v7, 0x50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 318
    :pswitch_5
    const/16 v7, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 321
    :pswitch_6
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    .line 324
    :pswitch_7
    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    .line 327
    :pswitch_8
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 330
    :pswitch_9
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    goto :goto_1

    .line 333
    :pswitch_a
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 338
    .end local v1    # "attr":I
    :cond_0
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 340
    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 342
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 343
    if-eqz v6, :cond_1

    .line 344
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 345
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 346
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 347
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :goto_2
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 354
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 355
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 361
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 362
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 364
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 365
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 367
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 368
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 369
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 371
    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 372
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/internal/R$bool;->config_swipeDisambiguation:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 375
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 376
    const-string v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 378
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 379
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 380
    return-void

    .line 349
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    goto/16 :goto_2

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/KeyboardView;

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 577
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 581
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 6
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const-wide/16 v4, 0x320

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1434
    if-ne p3, v3, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p3

    .line 1436
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 1437
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1438
    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_2

    .line 1440
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 1443
    :cond_2
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 1447
    :cond_3
    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_0

    .line 1448
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    goto :goto_0
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 605
    if-nez p1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 607
    .local v3, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 608
    array-length v4, v3

    .line 609
    .local v4, "length":I
    const/4 v0, 0x0

    .line 610
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 611
    aget-object v2, v3, v1

    .line 612
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 614
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 615
    int-to-float v5, v0

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 616
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    goto :goto_0
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 804
    if-eq p1, v5, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 805
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v3, p1

    .line 806
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 807
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 827
    :goto_0
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 828
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 830
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    return-void

    .line 810
    .restart local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v4

    .line 812
    .local v0, "code":I
    sget v3, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v3, [I

    .line 813
    .local v1, "codes":[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 814
    invoke-direct {p0, p2, p3, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 816
    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v3, :cond_2

    .line 817
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v3, v5, :cond_3

    .line 818
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v4, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v3, v4, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 822
    :goto_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v0, v3, v4

    .line 824
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 825
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0

    .line 820
    :cond_3
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_1
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1414
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1416
    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 754
    .local v13, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/16 v16, -0x1

    .line 755
    .local v16, "primaryIndex":I
    const/4 v5, -0x1

    .line 756
    .local v5, "closestKey":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    .line 757
    .local v6, "closestKeyDist":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v15

    .line 759
    .local v15, "nearestKeyIndices":[I
    array-length v12, v15

    .line 760
    .local v12, "keyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_7

    .line 761
    aget v17, v15, v8

    aget-object v11, v13, v17

    .line 762
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v7, 0x0

    .line 763
    .local v7, "dist":I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v9

    .line 764
    .local v9, "isInside":Z
    if-eqz v9, :cond_0

    .line 765
    aget v16, v15, v8

    .line 768
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    :cond_1
    if-eqz v9, :cond_4

    :cond_2
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 773
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 774
    .local v14, "nCodes":I
    if-ge v7, v6, :cond_3

    .line 775
    move v6, v7

    .line 776
    aget v5, v15, v8

    .line 779
    :cond_3
    if-nez p3, :cond_5

    .line 760
    .end local v14    # "nCodes":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 781
    .restart local v14    # "nCodes":I
    :cond_5
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    move/from16 v0, v17

    if-le v0, v7, :cond_6

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    add-int v17, v10, v14

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v10

    sub-int v18, v18, v14

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_2
    if-ge v4, v14, :cond_4

    .line 789
    add-int v17, v10, v4

    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    aput v18, p3, v17

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    add-int v18, v10, v4

    aput v7, v17, v18

    .line 788
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 781
    .end local v4    # "c":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 797
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v14    # "nCodes":I
    :cond_7
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 798
    move/from16 v16, v5

    .line 800
    :cond_8
    return v16
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 836
    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v1, :cond_1

    .line 838
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 839
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 842
    :goto_1
    return-object v0

    .line 839
    :cond_0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 842
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 436
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 437
    return-void
.end method

.method private onBufferDraw()V
    .locals 26

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_3

    .line 640
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 643
    :cond_1
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 644
    .local v24, "width":I
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 645
    .local v13, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 646
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 648
    .end local v13    # "height":I
    .end local v24    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 649
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 651
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 652
    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v2, :cond_4

    .line 750
    :goto_0
    return-void

    .line 656
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 657
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 658
    .local v19, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 659
    .local v8, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 660
    .local v23, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    move/from16 v16, v0

    .line 661
    .local v16, "kbdPaddingLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    move/from16 v17, v0

    .line 662
    .local v17, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v21, v0

    .line 663
    .local v21, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 665
    .local v15, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    const/4 v9, 0x0

    .line 667
    .local v9, "drawSingleKey":Z
    if-eqz v15, :cond_5

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_5

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_5

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int v2, v2, v16

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_5

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    add-int v2, v2, v17

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_5

    .line 673
    const/4 v9, 0x1

    .line 676
    :cond_5
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 677
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    .line 678
    .local v20, "keyCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_d

    .line 679
    aget-object v18, v21, v14

    .line 680
    .local v18, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v9, :cond_6

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_6

    .line 678
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 683
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v10

    .line 684
    .local v10, "drawableState":[I
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 687
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    const/16 v22, 0x0

    .line 689
    .local v22, "label":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 690
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_7

    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_8

    .line 692
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    :cond_8
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 695
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 697
    if-eqz v22, :cond_c

    .line 699
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 700
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 701
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 707
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 709
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 716
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 728
    :cond_9
    :goto_5
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 687
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v22    # "label":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 703
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v22    # "label":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 704
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 717
    :cond_c
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 718
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v2, v3

    .line 720
    .local v11, "drawableX":I
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v2, v3

    .line 722
    .local v12, "drawableY":I
    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 723
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 725
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 726
    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v12

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .line 730
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "drawableState":[I
    .end local v11    # "drawableX":I
    .end local v12    # "drawableY":I
    .end local v18    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v22    # "label":Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 732
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_e

    .line 733
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 748
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    .prologue
    .line 1223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int v2, v0, v1

    .line 1224
    .local v2, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int v3, v0, v1

    .line 1225
    .local v3, "touchY":I
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v0, v0

    if-lt v3, v0, :cond_0

    .line 1226
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v3, v0

    .line 1227
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1228
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1229
    .local v4, "eventTime":J
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 1230
    .local v8, "keyIndex":I
    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1233
    if-nez v6, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1234
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1237
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    .line 1239
    const/4 v0, 0x1

    .line 1361
    :goto_0
    return v0

    .line 1242
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1243
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1244
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1246
    const/4 v0, 0x1

    goto :goto_0

    .line 1251
    :cond_3
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq v6, v0, :cond_4

    .line 1252
    const/4 v0, 0x1

    goto :goto_0

    .line 1255
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1359
    :goto_1
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1360
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1361
    const/4 v0, 0x1

    goto :goto_0

    .line 1257
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1258
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1259
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1260
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1261
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1264
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1265
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1266
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1268
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1269
    invoke-direct {p0, v4, v5, v8}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1270
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, v8

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v0, v0, v10

    :goto_2
    invoke-interface {v1, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1272
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_6

    .line 1273
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1274
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1275
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x190

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1276
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1278
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_6

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_1

    .line 1270
    .end local v9    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1283
    :cond_6
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1284
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1285
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1287
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto/16 :goto_1

    .line 1291
    :pswitch_1
    const/4 v7, 0x0

    .line 1292
    .local v7, "continueLongPress":Z
    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    .line 1293
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1294
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1295
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1312
    :cond_8
    :goto_3
    if-nez v7, :cond_9

    .line 1314
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1316
    const/4 v0, -0x1

    if-eq v8, v0, :cond_9

    .line 1317
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1318
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1321
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1322
    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_1

    .line 1297
    :cond_a
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_b

    .line 1298
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1299
    const/4 v7, 0x1

    goto :goto_3

    .line 1300
    :cond_b
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1301
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1302
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1303
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1304
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1305
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1307
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_3

    .line 1326
    .end local v7    # "continueLongPress":Z
    :pswitch_2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1327
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_e

    .line 1328
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1336
    :goto_4
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_c

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v10, 0x46

    cmp-long v0, v0, v10

    if-gez v0, :cond_c

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1338
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1339
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1340
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1342
    :cond_c
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1343
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1345
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_d

    .line 1346
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1348
    :cond_d
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1349
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_1

    .line 1330
    :cond_e
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1331
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1332
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1333
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_4

    .line 1352
    :pswitch_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1353
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1355
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1356
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_1

    .line 1255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1061
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return v1

    .line 1064
    :cond_1
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1068
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 1069
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1070
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1071
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1072
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto :goto_0
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1401
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v6, v0, v1

    .line 1366
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1367
    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1427
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1428
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1429
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1430
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1431
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 975
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 976
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 977
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 978
    const/4 v2, 0x0

    .line 980
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "speak_password"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 984
    .local v1, "speakPassword":Z
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 986
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1009
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1021
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1024
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "speakPassword":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    return-void

    .line 988
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "speakPassword":Z
    .restart local v2    # "text":Ljava/lang/String;
    :sswitch_0
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_alt:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 989
    goto :goto_0

    .line 991
    :sswitch_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 992
    goto :goto_0

    .line 994
    :sswitch_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 995
    goto :goto_0

    .line 997
    :sswitch_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_done:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 998
    goto :goto_0

    .line 1000
    :sswitch_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_mode_change:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1001
    goto :goto_0

    .line 1003
    :sswitch_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_shift:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    goto :goto_0

    .line 1006
    :sswitch_6
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1007
    goto :goto_0

    .line 1011
    :cond_3
    iget-boolean v4, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    if-nez v4, :cond_5

    .line 1014
    const/16 v4, 0x100

    if-ne p1, v4, :cond_4

    .line 1015
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    .line 1017
    :cond_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboard_headset_required_to_hear_password:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1019
    :cond_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/internal/R$string;->keyboard_password_character_no_headset:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 986
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_5
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method private showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v13, 0x2

    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 901
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 902
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 903
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_0

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v6, v6

    if-lt p1, v6, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    aget-object v0, v1, p1

    .line 905
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 906
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v7, v8, v8, v8, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 922
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 924
    .local v4, "popupWidth":I
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 925
    .local v3, "popupHeight":I
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 926
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    .line 927
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 928
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 930
    :cond_2
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_7

    .line 931
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 932
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v3

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 938
    :goto_3
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 940
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v9

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v9

    .line 941
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v10

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v10

    .line 944
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v6, :cond_8

    sget-object v6, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_4
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 946
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 947
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 950
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 951
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    if-gez v6, :cond_3

    .line 954
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_9

    .line 955
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 959
    :goto_5
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 962
    :cond_3
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 963
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 971
    :goto_6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 906
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "popupHeight":I
    .end local v4    # "popupWidth":I
    :cond_4
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 910
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 911
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v10, :cond_6

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v6, v13, :cond_6

    .line 913
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 914
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 916
    :cond_6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 917
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 935
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "popupWidth":I
    :cond_7
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 936
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_3

    .line 944
    :cond_8
    sget-object v6, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_4

    .line 957
    :cond_9
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_5

    .line 966
    :cond_a
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 967
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 968
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_6
.end method

.method private showPreview(I)V
    .locals 13
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 847
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 848
    .local v4, "oldKeyIndex":I
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 850
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 852
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 853
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_1

    .line 854
    if-eq v4, v12, :cond_0

    array-length v6, v1

    if-le v6, v4, :cond_0

    .line 855
    aget-object v3, v1, v4

    .line 856
    .local v3, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v6, v12, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v3, v6}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 857
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 858
    iget-object v6, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 859
    .local v0, "keyCode":I
    const/16 v6, 0x100

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 862
    const/high16 v6, 0x10000

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 865
    .end local v0    # "keyCode":I
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v12, :cond_1

    array-length v6, v1

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v6, v9, :cond_1

    .line 866
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v2, v1, v6

    .line 867
    .local v2, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 868
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 869
    iget-object v6, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 870
    .restart local v0    # "keyCode":I
    const/16 v6, 0x80

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 873
    const v6, 0x8000

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 878
    .end local v0    # "keyCode":I
    .end local v2    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_3

    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_3

    .line 879
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 881
    if-ne p1, v12, :cond_2

    .line 882
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x46

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 887
    :cond_2
    if-eq p1, v12, :cond_3

    .line 888
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 890
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    .line 898
    :cond_3
    :goto_1
    return-void

    .restart local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_4
    move v6, v8

    .line 856
    goto :goto_0

    .line 892
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1387
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1390
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1392
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1393
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1394
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1395
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1396
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1421
    const/4 v0, 0x1

    .line 1423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1035
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1036
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .prologue
    .line 1046
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1050
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p1

    .line 1051
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1052
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1054
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1055
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 573
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 574
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1406
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1407
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1408
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 632
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 633
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 635
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 636
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1162
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1164
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1175
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1177
    .end local v0    # "action":I
    :cond_0
    return v1

    .line 1166
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1169
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1172
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 14
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/high16 v13, -0x80000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1085
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1087
    .local v2, "popupKeyboardId":I
    if-eqz v2, :cond_1

    .line 1088
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1089
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1090
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1092
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1093
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    sget v3, Lcom/android/internal/R$id;->keyboardView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1095
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    sget v3, Lcom/android/internal/R$id;->closeButton:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1097
    .local v6, "closeButton":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1122
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1123
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v12

    add-int/2addr v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1128
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1129
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1130
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1134
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1140
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1141
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1142
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1143
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1144
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v10

    add-int v8, v1, v3

    .line 1145
    .local v8, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v11

    add-int v9, v1, v3

    .line 1146
    .local v9, "y":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v8, :cond_4

    move v1, v10

    :goto_2
    invoke-virtual {v3, v1, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1147
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1148
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1149
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1150
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1151
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1152
    iput-boolean v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1154
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    move v10, v11

    .line 1157
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_1
    return v10

    .line 1126
    .restart local v6    # "closeButton":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_0

    .line 1136
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    sget v3, Lcom/android/internal/R$id;->keyboardView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    goto/16 :goto_1

    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_4
    move v1, v8

    .line 1146
    goto :goto_2
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 587
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    .line 588
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 596
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int v0, v1, v2

    .line 591
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 592
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 594
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 622
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 627
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1185
    .local v10, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1186
    .local v8, "action":I
    const/4 v11, 0x0

    .line 1187
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1189
    .local v0, "now":J
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    if-eq v10, v2, :cond_2

    .line 1190
    if-ne v10, v13, :cond_1

    .line 1192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1194
    .local v9, "down":Landroid/view/MotionEvent;
    invoke-direct {p0, v9, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1195
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1197
    if-ne v8, v13, :cond_0

    .line 1198
    invoke-direct {p0, p1, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1217
    .end local v9    # "down":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1219
    return v11

    .line 1202
    :cond_1
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    move v4, v13

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1204
    .local v12, "up":Landroid/view/MotionEvent;
    invoke-direct {p0, v12, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1205
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1208
    .end local v12    # "up":Landroid/view/MotionEvent;
    :cond_2
    if-ne v10, v13, :cond_3

    .line 1209
    invoke-direct {p0, p1, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_0

    .line 1214
    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    const/4 v2, 0x1

    .line 459
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 463
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 464
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 465
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 467
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 469
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 470
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 471
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 472
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 475
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 476
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .prologue
    .line 440
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 441
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 544
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 545
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 546
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 549
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 541
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 525
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 559
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 498
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    .prologue
    .line 538
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1384
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1376
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1372
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1380
    return-void
.end method
