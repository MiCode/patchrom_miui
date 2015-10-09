.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field public mChangingConfigurations:I

.field public mColors:[I

.field public mGradient:I

.field private mGradientRadius:F

.field public mHasSolidColor:Z

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field private mOpaque:Z

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColor:I

.field public mStrokeColor:I

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field public mThickness:I

.field public mThicknessRatio:F

.field private mUseLevel:Z

.field private mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1111
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1077
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1078
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1086
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1093
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1094
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1099
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1100
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1101
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1112
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1113
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1114
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1115
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1116
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1119
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1122
    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1123
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 1124
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1125
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1126
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1127
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1128
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1129
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1132
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1133
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1135
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1136
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1137
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1138
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1139
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1140
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1141
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1142
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1143
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1144
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1145
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1146
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    .line 1147
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 3
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1106
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1077
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1078
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1086
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1093
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1094
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1099
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1100
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1101
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1107
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1108
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setColors([I)V

    .line 1109
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p1, "x1"    # Z

    .prologue
    .line 1075
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p1, "x1"    # Z

    .prologue
    .line 1075
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    return v0
.end method

.method static synthetic access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p1, "x1"    # F

    .prologue
    .line 1075
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p1, "x1"    # F

    .prologue
    .line 1075
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return p1
.end method

.method static synthetic access$500(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return v0
.end method

.method static synthetic access$502(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p1, "x1"    # F

    .prologue
    .line 1075
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return p1
.end method

.method static synthetic access$600(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    .line 1075
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method private computeOpacity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1192
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-eqz v1, :cond_0

    .line 1193
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    .line 1222
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v1, :cond_2

    .line 1198
    :cond_1
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1202
    :cond_2
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v1, :cond_3

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1203
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1207
    :cond_3
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_4

    .line 1208
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v1, :cond_6

    .line 1213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1214
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1215
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0

    .line 1213
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1221
    .end local v0    # "i":I
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaque:Z

    goto :goto_0
.end method

.method private static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 1225
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1156
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 1179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1180
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1181
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1182
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    .prologue
    .line 1251
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1255
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 1243
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1244
    const/4 p1, 0x0

    .line 1246
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 1247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 1248
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1174
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1175
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1176
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 0
    .param p1, "gradientRadius"    # F

    .prologue
    .line 1263
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1264
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .param p1, "gradient"    # I

    .prologue
    .line 1170
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1171
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1, "shape"    # I

    .prologue
    .line 1165
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1166
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1167
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1258
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1259
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1260
    return-void
.end method

.method public setSolidColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 1186
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 1188
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1189
    return-void
.end method

.method public setStroke(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "color"    # I

    .prologue
    .line 1229
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1230
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1231
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1232
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .prologue
    .line 1235
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 1236
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 1237
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 1238
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 1239
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    .line 1240
    return-void
.end method
