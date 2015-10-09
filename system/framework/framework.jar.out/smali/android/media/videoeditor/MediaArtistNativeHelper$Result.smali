.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$Result;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Result"
.end annotation


# static fields
.field public static final ERR_ADDCTS_HIGHER_THAN_VIDEO_DURATION:I = 0x28

.field public static final ERR_ADDVOLUME_EQUALS_ZERO:I = 0x27

.field public static final ERR_ALLOC:I = 0x3e

.field public static final ERR_AMR_EDITING_UNSUPPORTED:I = 0x13

.field public static final ERR_ANALYSIS_DATA_SIZE_TOO_SMALL:I = 0xf

.field public static final ERR_AUDIOBITRATE_TOO_HIGH:I = 0x79

.field public static final ERR_AUDIOBITRATE_TOO_LOW:I = 0x77

.field public static final ERR_AUDIO_CANNOT_BE_MIXED:I = 0x2f

.field public static final ERR_AUDIO_CONVERSION_FAILED:I = 0x72

.field public static final ERR_AUDIO_MIXING_MP3_UNSUPPORTED:I = 0x2c

.field public static final ERR_AUDIO_MIXING_UNSUPPORTED:I = 0x2b

.field public static final ERR_BAD_CONTEXT:I = 0x3f

.field public static final ERR_BAD_OPTION_ID:I = 0x42

.field public static final ERR_BAD_STREAM_ID:I = 0x41

.field public static final ERR_BEGIN_CUT_EQUALS_END_CUT:I = 0x73

.field public static final ERR_BEGIN_CUT_LARGER_THAN_DURATION:I = 0xc

.field public static final ERR_BEGIN_CUT_LARGER_THAN_END_CUT:I = 0xd

.field public static final ERR_BUFFER_OUT_TOO_SMALL:I = 0x2

.field public static final ERR_CLOCK_BAD_REF_YEAR:I = 0x38

.field public static final ERR_CONTEXT_FAILED:I = 0x40

.field public static final ERR_DECODER_H263_NOT_BASELINE:I = 0x87

.field public static final ERR_DECODER_H263_PROFILE_NOT_SUPPORTED:I = 0x86

.field public static final ERR_DIR_NO_MORE_ENTRY:I = 0x3b

.field public static final ERR_DIR_OPEN_FAILED:I = 0x39

.field public static final ERR_DIR_READ_FAILED:I = 0x3a

.field public static final ERR_DURATION_IS_NULL:I = 0x6f

.field public static final ERR_EDITING_NO_SUPPORTED_STREAM_IN_FILE:I = 0x1d

.field public static final ERR_EDITING_NO_SUPPORTED_VIDEO_STREAM_IN_FILE:I = 0x1e

.field public static final ERR_EDITING_UNSUPPORTED_AUDIO_FORMAT:I = 0x1c

.field public static final ERR_EDITING_UNSUPPORTED_H263_PROFILE:I = 0x19

.field public static final ERR_EDITING_UNSUPPORTED_MPEG4_PROFILE:I = 0x1a

.field public static final ERR_EDITING_UNSUPPORTED_MPEG4_RVLC:I = 0x1b

.field public static final ERR_EDITING_UNSUPPORTED_VIDEO_FORMAT:I = 0x18

.field public static final ERR_ENCODER_ACCES_UNIT_ERROR:I = 0x17

.field public static final ERR_END_CUT_SMALLER_THAN_BEGIN_CUT:I = 0x74

.field public static final ERR_EXTERNAL_EFFECT_NULL:I = 0xa

.field public static final ERR_EXTERNAL_TRANSITION_NULL:I = 0xb

.field public static final ERR_FEATURE_UNSUPPORTED_WITH_AAC:I = 0x2e

.field public static final ERR_FEATURE_UNSUPPORTED_WITH_AUDIO_TRACK:I = 0x2d

.field public static final ERR_FEATURE_UNSUPPORTED_WITH_EVRC:I = 0x31

.field public static final ERR_FILE_BAD_MODE_ACCESS:I = 0x50

.field public static final ERR_FILE_INVALID_POSITION:I = 0x51

.field public static final ERR_FILE_LOCKED:I = 0x4f

.field public static final ERR_FILE_NOT_FOUND:I = 0x1

.field public static final ERR_H263_FORBIDDEN_IN_MP4_FILE:I = 0x70

.field public static final ERR_H263_PROFILE_NOT_SUPPORTED:I = 0x33

.field public static final ERR_INCOMPATIBLE_VIDEO_DATA_PARTITIONING:I = 0x24

.field public static final ERR_INCOMPATIBLE_VIDEO_FORMAT:I = 0x21

.field public static final ERR_INCOMPATIBLE_VIDEO_FRAME_SIZE:I = 0x22

.field public static final ERR_INCOMPATIBLE_VIDEO_TIME_SCALE:I = 0x23

.field public static final ERR_INPUT_AUDIO_AU_TOO_LARGE:I = 0x15

.field public static final ERR_INPUT_AUDIO_CORRUPTED_AU:I = 0x16

.field public static final ERR_INPUT_FILE_CONTAINS_NO_SUPPORTED_STREAM:I = 0x67

.field public static final ERR_INPUT_VIDEO_AU_TOO_LARGE:I = 0x14

.field public static final ERR_INTERNAL:I = 0xff

.field public static final ERR_INVALID_3GPP_FILE:I = 0x10

.field public static final ERR_INVALID_AAC_SAMPLING_FREQUENCY:I = 0x71

.field public static final ERR_INVALID_AUDIO_EFFECT_TYPE:I = 0x6

.field public static final ERR_INVALID_AUDIO_TRANSITION_TYPE:I = 0x8

.field public static final ERR_INVALID_CLIP_ANALYSIS_PLATFORM:I = 0x20

.field public static final ERR_INVALID_CLIP_ANALYSIS_VERSION:I = 0x1f

.field public static final ERR_INVALID_EFFECT_KIND:I = 0x4

.field public static final ERR_INVALID_FILE_TYPE:I = 0x3

.field public static final ERR_INVALID_INPUT_FILE:I = 0x68

.field public static final ERR_INVALID_VIDEO_EFFECT_TYPE:I = 0x5

.field public static final ERR_INVALID_VIDEO_ENCODING_FRAME_RATE:I = 0x9

.field public static final ERR_INVALID_VIDEO_FRAME_RATE_FOR_H263:I = 0x6e

.field public static final ERR_INVALID_VIDEO_FRAME_SIZE_FOR_H263:I = 0x6d

.field public static final ERR_INVALID_VIDEO_TRANSITION_TYPE:I = 0x7

.field public static final ERR_MAXFILESIZE_TOO_SMALL:I = 0x75

.field public static final ERR_NOMORE_SPACE_FOR_FILE:I = 0x88

.field public static final ERR_NOT_IMPLEMENTED:I = 0x45

.field public static final ERR_NO_SUPPORTED_STREAM_IN_FILE:I = 0x26

.field public static final ERR_NO_SUPPORTED_VIDEO_STREAM_IN_FILE:I = 0x34

.field public static final ERR_ONLY_AMRNB_INPUT_CAN_BE_MIXED:I = 0x30

.field public static final ERR_OUTPUT_FILE_SIZE_TOO_SMALL:I = 0x7a

.field public static final ERR_OVERLAPPING_TRANSITIONS:I = 0xe

.field public static final ERR_PARAMETER:I = 0x3c

.field public static final ERR_READER_UNKNOWN_STREAM_TYPE:I = 0x7b

.field public static final ERR_READ_ONLY:I = 0x44

.field public static final ERR_STATE:I = 0x3d

.field public static final ERR_STR_BAD_ARGS:I = 0x61

.field public static final ERR_STR_BAD_STRING:I = 0x5e

.field public static final ERR_STR_CONV_FAILED:I = 0x5f

.field public static final ERR_STR_OVERFLOW:I = 0x60

.field public static final ERR_THREAD_NOT_STARTED:I = 0x64

.field public static final ERR_UNDEFINED_AUDIO_TRACK_FILE_FORMAT:I = 0x29

.field public static final ERR_UNDEFINED_OUTPUT_AUDIO_FORMAT:I = 0x6c

.field public static final ERR_UNDEFINED_OUTPUT_VIDEO_FORMAT:I = 0x69

.field public static final ERR_UNDEFINED_OUTPUT_VIDEO_FRAME_RATE:I = 0x6b

.field public static final ERR_UNDEFINED_OUTPUT_VIDEO_FRAME_SIZE:I = 0x6a

.field public static final ERR_UNSUPPORTED_ADDED_AUDIO_STREAM:I = 0x2a

.field public static final ERR_UNSUPPORTED_INPUT_AUDIO_FORMAT:I = 0x12

.field public static final ERR_UNSUPPORTED_INPUT_VIDEO_FORMAT:I = 0x11

.field public static final ERR_UNSUPPORTED_MEDIA_TYPE:I = 0x46

.field public static final ERR_UNSUPPORTED_MP3_ASSEMBLY:I = 0x25

.field public static final ERR_VIDEOBITRATE_TOO_HIGH:I = 0x78

.field public static final ERR_VIDEOBITRATE_TOO_LOW:I = 0x76

.field public static final ERR_WRITE_ONLY:I = 0x43

.field public static final NO_ERROR:I = 0x0

.field public static final WAR_BUFFER_FULL:I = 0x4c

.field public static final WAR_DEBLOCKING_FILTER_NOT_IMPLEMENTED:I = 0x85

.field public static final WAR_INVALID_TIME:I = 0x49

.field public static final WAR_MAX_OUTPUT_SIZE_EXCEEDED:I = 0x36

.field public static final WAR_MEDIATYPE_NOT_SUPPORTED:I = 0x66

.field public static final WAR_NO_DATA_YET:I = 0x47

.field public static final WAR_NO_MORE_AU:I = 0x4a

.field public static final WAR_NO_MORE_STREAM:I = 0x48

.field public static final WAR_READER_INFORMATION_NOT_PRESENT:I = 0x7d

.field public static final WAR_READER_NO_METADATA:I = 0x7c

.field public static final WAR_REDIRECT:I = 0x4d

.field public static final WAR_STR_NOT_FOUND:I = 0x63

.field public static final WAR_STR_OVERFLOW:I = 0x62

.field public static final WAR_TIMESCALE_TOO_BIG:I = 0x37

.field public static final WAR_TIME_OUT:I = 0x4b

.field public static final WAR_TOO_MUCH_STREAMS:I = 0x4e

.field public static final WAR_TRANSCODING_DONE:I = 0x65

.field public static final WAR_TRANSCODING_NECESSARY:I = 0x35

.field public static final WAR_VIDEORENDERER_NO_NEW_FRAME:I = 0x84

.field public static final WAR_WRITER_STOP_REQ:I = 0x83


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$Result;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
