.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformationInfo"
.end annotation


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCamera:Landroid/graphics/Camera;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private mInverseMatrixDirty:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field mMatrixDirty:Z

.field private mMatrixIsIdentity:Z

.field mPivotX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mPivotY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mPrevHeight:I

.field private mPrevWidth:I

.field mRotation:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mRotationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mScaleY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mTransitionAlpha:F

.field mTranslationX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mTranslationY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private matrix3D:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2812
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    .line 2828
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 2835
    iput-boolean v4, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    .line 2844
    iput-boolean v4, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    .line 2849
    iput-object v5, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 2854
    iput-object v5, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 2861
    iput v3, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    .line 2862
    iput v3, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    .line 2867
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 2873
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 2879
    iput v1, p0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 2885
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 2891
    iput v1, p0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 2898
    iput v2, p0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 2905
    iput v2, p0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 2911
    iput v1, p0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 2917
    iput v1, p0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 2924
    iput v2, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 2932
    iput v2, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method

.method static synthetic access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/view/View$TransformationInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-boolean v0, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/view/View$TransformationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/view/View$TransformationInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget v0, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return v0
.end method

.method static synthetic access$1702(Landroid/view/View$TransformationInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2804
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevWidth:I

    return p1
.end method

.method static synthetic access$1800(Landroid/view/View$TransformationInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget v0, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return v0
.end method

.method static synthetic access$1802(Landroid/view/View$TransformationInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # I

    .prologue
    .line 2804
    iput p1, p0, Landroid/view/View$TransformationInfo;->mPrevHeight:I

    return p1
.end method

.method static synthetic access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Camera;

    .prologue
    .line 2804
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 2804
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/view/View$TransformationInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-boolean v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/view/View$TransformationInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 2804
    iput-boolean p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;

    .prologue
    .line 2804
    iget-object v0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Landroid/view/View$TransformationInfo;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 2804
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method
