.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_NONE:I = 0x0

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TOUCH_NAVIGATION:I = 0x200000

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private final mControllerNumber:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mGeneration:I

.field private final mHasButtonUnderPad:Z

.field private final mHasVibrator:Z

.field private final mId:I

.field private final mIsExternal:Z

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mSources:I

.field private final mVendorId:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;IILjava/lang/String;ZIILandroid/view/KeyCharacterMap;ZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "generation"    # I
    .param p3, "controllerNumber"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vendorId"    # I
    .param p6, "productId"    # I
    .param p7, "descriptor"    # Ljava/lang/String;
    .param p8, "isExternal"    # Z
    .param p9, "sources"    # I
    .param p10, "keyboardType"    # I
    .param p11, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;
    .param p12, "hasVibrator"    # Z
    .param p13, "hasButtonUnderPad"    # Z

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 351
    iput p1, p0, Landroid/view/InputDevice;->mId:I

    .line 352
    iput p2, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 353
    iput p3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 354
    iput-object p4, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 355
    iput p5, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 356
    iput p6, p0, Landroid/view/InputDevice;->mProductId:I

    .line 357
    iput-object p7, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 358
    iput-boolean p8, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 359
    iput p9, p0, Landroid/view/InputDevice;->mSources:I

    .line 360
    iput p10, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 361
    iput-object p11, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 362
    iput-boolean p12, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 363
    iput-boolean p13, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 364
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mGeneration:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mVendorId:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mProductId:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    .line 377
    sget-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    .line 382
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .local v1, "axis":I
    if-gez v1, :cond_3

    .line 389
    return-void

    .end local v1    # "axis":I
    :cond_0
    move v0, v3

    .line 374
    goto :goto_0

    :cond_1
    move v0, v3

    .line 378
    goto :goto_1

    :cond_2
    move v2, v3

    .line 379
    goto :goto_2

    .line 386
    .restart local v1    # "axis":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/view/InputDevice;->addMotionRange(IIFFFFF)V

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/InputDevice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/InputDevice$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/InputDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFFF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .prologue
    .line 654
    iget-object v9, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InputDevice$MotionRange;

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice$1;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/StringBuilder;
    .param p2, "source"    # I
    .param p3, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 890
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    .line 891
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 397
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIds()[I
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public getControllerNumber()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/view/InputDevice;->mControllerNumber:I

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Landroid/view/InputDevice;->mGeneration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I

    .prologue
    .line 606
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 607
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 608
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 609
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 613
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :goto_1
    return-object v2

    .line 607
    .restart local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .prologue
    .line 631
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 632
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 633
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 634
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 638
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :goto_1
    return-object v2

    .line 632
    .restart local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/view/InputDevice;->mProductId:I

    return v0
.end method

.method public getSources()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/view/InputDevice;->mVendorId:I

    return v0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 3

    .prologue
    .line 670
    iget-object v1, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    monitor-enter v1

    .line 671
    :try_start_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 672
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v0, :cond_1

    .line 673
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getInputDeviceVibrator(I)Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    .line 678
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    monitor-exit v1

    return-object v0

    .line 675
    :cond_1
    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasButtonUnderPad()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    return v0
.end method

.method public varargs hasKeys([I)[Z
    .locals 2
    .param p1, "keys"    # [I

    .prologue
    .line 588
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Landroid/view/InputDevice;->mIsExternal:Z

    return v0
.end method

.method public isFullKeyboard()Z
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/lit16 v0, v0, 0x101

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVirtual()Z
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Landroid/view/InputDevice;->mId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v4, "Input Device "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v4, "  Descriptor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v4, "  Generation: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string v4, "  Location: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v4, :cond_0

    const-string v4, "external"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string v4, "  Keyboard Type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget v4, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v4, :pswitch_data_0

    .line 857
    :goto_1
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string v4, "  Has Vibrator: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v4, "  Sources: 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const/16 v4, 0x101

    const-string v5, "keyboard"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 863
    const/16 v4, 0x201

    const-string v5, "dpad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 864
    const/16 v4, 0x1002

    const-string/jumbo v5, "touchscreen"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 865
    const/16 v4, 0x2002

    const-string/jumbo v5, "mouse"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 866
    const/16 v4, 0x4002

    const-string/jumbo v5, "stylus"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 867
    const v4, 0x10004

    const-string/jumbo v5, "trackball"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 868
    const v4, 0x100008

    const-string/jumbo v5, "touchpad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 869
    const v4, 0x1000010

    const-string v5, "joystick"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 870
    const/16 v4, 0x401

    const-string v5, "gamepad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 871
    const-string v4, " )\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 874
    .local v2, "numAxes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 875
    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 876
    .local v3, "range":Landroid/view/InputDevice$MotionRange;
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v4, ": source=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v4, " min="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 879
    const-string v4, " max="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 880
    const-string v4, " flat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 881
    const-string v4, " fuzz="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 882
    const-string v4, " resolution="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/view/InputDevice$MotionRange;->mResolution:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 883
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 843
    .end local v1    # "i":I
    .end local v2    # "numAxes":I
    .end local v3    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    const-string v4, "built-in"

    goto/16 :goto_0

    .line 848
    :pswitch_0
    const-string/jumbo v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 851
    :pswitch_1
    const-string/jumbo v4, "non-alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 854
    :pswitch_2
    const-string v4, "alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 885
    .restart local v1    # "i":I
    .restart local v2    # "numAxes":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 804
    iget v3, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget v3, p0, Landroid/view/InputDevice;->mGeneration:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    iget v3, p0, Landroid/view/InputDevice;->mControllerNumber:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget-object v3, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    iget v3, p0, Landroid/view/InputDevice;->mVendorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    iget v3, p0, Landroid/view/InputDevice;->mProductId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-object v3, p0, Landroid/view/InputDevice;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-boolean v3, p0, Landroid/view/InputDevice;->mIsExternal:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-object v3, p0, Landroid/view/InputDevice;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v3, p1, p2}, Landroid/view/KeyCharacterMap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 815
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasVibrator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-boolean v3, p0, Landroid/view/InputDevice;->mHasButtonUnderPad:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 819
    .local v1, "numRanges":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 820
    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    .line 821
    .local v2, "range":Landroid/view/InputDevice$MotionRange;
    # getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    # getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$200(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    # getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$400(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 824
    # getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 825
    # getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 826
    # getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 827
    # getter for: Landroid/view/InputDevice$MotionRange;->mResolution:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "numRanges":I
    .end local v2    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    move v3, v5

    .line 811
    goto :goto_0

    :cond_1
    move v3, v5

    .line 815
    goto :goto_1

    :cond_2
    move v4, v5

    .line 816
    goto :goto_2

    .line 829
    .restart local v0    # "i":I
    .restart local v1    # "numRanges":I
    :cond_3
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    return-void
.end method
