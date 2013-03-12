.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileParsingTime;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final AUDIO_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final AUDIO_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final AUDIO_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DOWNLOAD_DIR:Ljava/lang/String; = "/download/"

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mExternalStorageSdPath:Ljava/lang/String;

.field private static storageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private final isLogEnabled:Z

.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mExternalStoragePath:Ljava/lang/String;

.field private mFileParsingStat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileParsingTime;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mTotalBitmapDecodingTime:J

.field private mTotalBulkInserterTime:J

.field private mTotalCheckedDirectories:J

.field private mTotalCheckedFiles:J

.field private mTotalExifExtractingTime:J

.field private mTotalInserted:J

.field private mTotalMakeEntryTime:J

.field private mTotalParsingTime:J

.field private mTotalUpdated:J

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 139
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 155
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 189
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isLogEnabled:Z

    .line 356
    iput-object v3, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 357
    iput-object v3, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 367
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 391
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 449
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    .line 450
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 451
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 452
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 453
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 454
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 455
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 456
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 457
    iput-wide v1, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 461
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 529
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 465
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 466
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 467
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 468
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 470
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 473
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 474
    invoke-static {p1}, Landroid/media/MediaScanner;->setExternalStorageSdPath(Landroid/content/Context;)V

    .line 475
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor set externalStorageSdPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "cr"
    .parameter "URIsetting"
    .parameter "URIInternalMedia"
    .parameter "settingString"
    .parameter "defaultMediaName"

    .prologue
    .line 2406
    const/4 v8, 0x0

    .line 2407
    .local v8, existingSettingValue:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2408
    .local v9, resultMediaCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2409
    .local v10, resultSettingCursor:Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 2411
    .local v11, rowId:J
    invoke-static/range {p5 .. p5}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2412
    .local v13, str:Ljava/lang/String;
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const/4 v13, 0x0

    .line 2415
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2416
    if-eqz v10, :cond_3

    .line 2417
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2419
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2420
    if-eqz v9, :cond_1

    .line 2421
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2423
    const/4 v7, 0x0

    .line 2424
    .local v7, bResult:Z
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2425
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2426
    move-object/from16 v0, p3

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2427
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write again. Default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  Result is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG_MEDIASCANNER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_AGAIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2435
    .end local v7           #bResult:Z
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2443
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2447
    :goto_2
    return-void

    .line 2433
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! getCount() of Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in internal DB is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2437
    :cond_1
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in internal DB is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2441
    :cond_2
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exist in setting DB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2445
    :cond_3
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! Cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in setting DB is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1014(Landroid/media/MediaScanner;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    return-wide v0
.end method

.method static synthetic access$1114(Landroid/media/MediaScanner;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1714(Landroid/media/MediaScanner;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$3008(Landroid/media/MediaScanner;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    return-wide v0
.end method

.method static synthetic access$3114(Landroid/media/MediaScanner;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    return-wide v0
.end method

.method static synthetic access$314(Landroid/media/MediaScanner;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    return-wide v0
.end method

.method static synthetic access$3208(Landroid/media/MediaScanner;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$608(Landroid/media/MediaScanner;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    return-wide v0
.end method

.method static synthetic access$708(Landroid/media/MediaScanner;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "line"
    .parameter "playListDirectory"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2080
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2082
    .local v1, entry:Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2083
    .local v2, entryLength:I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2086
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2101
    :goto_1
    return-void

    .line 2087
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2091
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2092
    .local v0, ch1:C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2095
    .local v3, fullPath:Z
    :cond_4
    if-nez v3, :cond_5

    .line 2096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2097
    :cond_5
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2100
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static encodeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "str"

    .prologue
    .line 479
    if-nez p0, :cond_0

    const/4 v12, 0x0

    .line 502
    :goto_0
    return-object v12

    .line 481
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 482
    .local v10, bytes:[B
    const/16 v8, 0x10

    .local v8, b4:I
    const/16 v6, 0x8

    .local v6, b3:I
    const/4 v4, 0x2

    .local v4, b1:I
    const/4 v2, 0x1

    .line 483
    .local v2, b0:I
    const/16 v3, 0xfe

    .local v3, b0mask:I
    const/16 v5, 0xfd

    .local v5, b1mask:I
    const/16 v7, 0xf7

    .local v7, b3mask:I
    const/16 v9, 0xef

    .line 486
    .local v9, b4mask:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_5

    .line 487
    aget-byte v0, v10, v11

    .local v0, a:I
    move v1, v0

    .line 489
    .local v1, b:I
    and-int v12, v0, v4

    if-eqz v12, :cond_1

    or-int/2addr v1, v2

    .line 491
    :goto_2
    and-int v12, v0, v2

    if-eqz v12, :cond_2

    or-int/2addr v1, v4

    .line 494
    :goto_3
    and-int v12, v0, v8

    if-eqz v12, :cond_3

    or-int/2addr v1, v6

    .line 496
    :goto_4
    and-int v12, v0, v6

    if-eqz v12, :cond_4

    or-int/2addr v1, v8

    .line 499
    :goto_5
    int-to-byte v12, v1

    aput-byte v12, v10, v11

    .line 486
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 490
    :cond_1
    and-int/2addr v1, v3

    goto :goto_2

    .line 492
    :cond_2
    and-int/2addr v1, v5

    goto :goto_3

    .line 495
    :cond_3
    and-int/2addr v1, v7

    goto :goto_4

    .line 497
    :cond_4
    and-int/2addr v1, v9

    goto :goto_5

    .line 502
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1623
    aget-object v0, p2, v1

    .line 1624
    .local v0, directory:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1625
    const/4 v2, 0x1

    .line 1628
    .end local v0           #directory:Ljava/lang/String;
    :goto_1
    return v2

    .line 1622
    .restart local v0       #directory:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1628
    .end local v0           #directory:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static native initMutex()V
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1735
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1737
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1738
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1739
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1740
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1741
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1743
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1746
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1747
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1749
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1751
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1879
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1909
    :cond_0
    :goto_0
    return v1

    .line 1885
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1886
    .local v7, lastSlash:I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1888
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1896
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1901
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #length:I
    :cond_3
    move v1, v4

    .line 1909
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1913
    if-nez p0, :cond_0

    .line 1933
    :goto_0
    return v3

    .line 1916
    :cond_0
    const-string v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 1920
    :cond_1
    const/4 v1, 0x1

    .line 1921
    .local v1, offset:I
    :goto_1
    if-ltz v1, :cond_3

    .line 1922
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1923
    .local v2, slashIndex:I
    if-le v2, v1, :cond_2

    .line 1924
    add-int/lit8 v2, v2, 0x1

    .line 1925
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1926
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 1928
    goto :goto_0

    .line 1931
    .end local v0           #file:Ljava/io/File;
    :cond_2
    move v1, v2

    .line 1932
    goto :goto_1

    .line 1933
    .end local v2           #slashIndex:I
    :cond_3
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .parameter "rowId"
    .parameter "data"

    .prologue
    const v6, 0x7fffffff

    .line 2056
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2057
    .local v3, len:I
    const/4 v0, 0x1

    .line 2058
    .local v0, done:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2059
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2060
    .local v1, entry:Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2058
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2063
    :cond_1
    const/4 v0, 0x0

    .line 2064
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2065
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2066
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2070
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2071
    .local v4, matchLength:I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2072
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2073
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2076
    .end local v1           #entry:Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4           #matchLength:I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 2029
    const/4 v10, 0x0

    .line 2030
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2031
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2033
    .local v9, end2:I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2034
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2035
    .local v11, slash1:I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2036
    .local v12, slash2:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2037
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2038
    .local v7, backSlash2:I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2039
    .local v2, start1:I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2040
    .local v4, start2:I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2041
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2042
    :goto_4
    sub-int v5, v8, v2

    .line 2043
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2051
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_0
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_1
    move v2, v6

    .line 2038
    goto :goto_1

    .restart local v2       #start1:I
    :cond_2
    move v4, v7

    .line 2039
    goto :goto_2

    .line 2040
    .restart local v4       #start2:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2041
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2044
    .restart local v5       #length:I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    add-int/lit8 v10, v10, 0x1

    .line 2046
    add-int/lit8 v8, v2, -0x1

    .line 2047
    add-int/lit8 v9, v4, -0x1

    .line 2049
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1722
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1723
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1726
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1727
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1730
    :cond_1
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1731
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1732
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)I
    .locals 32
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1489
    const/16 v16, 0x0

    .line 1490
    .local v16, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1491
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1493
    .local v7, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-nez v3, :cond_5

    .line 1494
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 1499
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 1500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1505
    :goto_1
    if-eqz p1, :cond_7

    .line 1507
    const-string v6, "_id>? AND _data=?"

    .line 1509
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, ""

    aput-object v5, v7, v3

    const/4 v3, 0x1

    aput-object p1, v7, v3

    .line 1523
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 1524
    .local v15, builder:Landroid/net/Uri$Builder;
    const-string v3, "deletedata"

    const-string v5, "false"

    invoke-virtual {v15, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1525
    new-instance v18, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Landroid/net/Uri;)V

    .line 1529
    .local v18, deleter:Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_2

    .line 1534
    const-wide/high16 v22, -0x8000

    .line 1535
    .local v22, lastId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "limit"

    const-string v8, "1000"

    invoke-virtual {v3, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1536
    .local v4, limitUri:Landroid/net/Uri;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1539
    :cond_0
    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 1540
    if-eqz v16, :cond_1

    .line 1541
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1542
    const/16 v16, 0x0

    .line 1544
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id"

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 1546
    if-nez v16, :cond_8

    .line 1595
    .end local v4           #limitUri:Landroid/net/Uri;
    .end local v22           #lastId:J
    :cond_2
    if-eqz v16, :cond_3

    .line 1596
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1598
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1602
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1608
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v10, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v16

    .line 1611
    if-eqz v16, :cond_4

    .line 1612
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1613
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1616
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->getTotalDeletedNumber()I

    move-result v17

    .line 1617
    .local v17, deletedNumber:I
    const/16 v18, 0x0

    .line 1618
    return v17

    .line 1496
    .end local v15           #builder:Landroid/net/Uri$Builder;
    .end local v17           #deletedNumber:I
    .end local v18           #deleter:Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1502
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 1514
    :cond_7
    const-string v6, "_id>?"

    .line 1516
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, ""

    aput-object v5, v7, v3

    .restart local v7       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_2

    .line 1550
    .restart local v4       #limitUri:Landroid/net/Uri;
    .restart local v15       #builder:Landroid/net/Uri$Builder;
    .restart local v18       #deleter:Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v22       #lastId:J
    :cond_8
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v27

    .line 1552
    .local v27, num:I
    if-eqz v27, :cond_2

    .line 1555
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1556
    :cond_9
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1557
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1558
    .local v30, rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1559
    .local v29, path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1560
    .local v21, format:I
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1561
    .local v24, lastModified:J
    move-wide/from16 v22, v30

    .line 1566
    if-eqz v29, :cond_9

    const-string v3, "/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_9

    .line 1567
    const/16 v19, 0x0

    .line 1569
    .local v19, exists:Z
    :try_start_2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v5, Llibcore/io/OsConstants;->F_OK:I

    move-object/from16 v0, v29

    invoke-interface {v3, v0, v5}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v19

    .line 1572
    :goto_4
    if-nez v19, :cond_9

    :try_start_3
    invoke-static/range {v21 .. v21}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1577
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1578
    .local v26, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_b

    const/16 v20, 0x0

    .line 1580
    .local v20, fileType:I
    :goto_5
    invoke-static/range {v20 .. v20}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1581
    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1582
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/.nomedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1583
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1584
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v28

    .line 1585
    .local v28, parent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const-string/jumbo v5, "unhide"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v3, v5, v0, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1595
    .end local v4           #limitUri:Landroid/net/Uri;
    .end local v19           #exists:Z
    .end local v20           #fileType:I
    .end local v21           #format:I
    .end local v24           #lastModified:J
    .end local v26           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v27           #num:I
    .end local v28           #parent:Ljava/lang/String;
    .end local v29           #path:Ljava/lang/String;
    .end local v30           #rowId:J
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_a

    .line 1596
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1598
    :cond_a
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v3

    .line 1578
    .restart local v4       #limitUri:Landroid/net/Uri;
    .restart local v19       #exists:Z
    .restart local v21       #format:I
    .restart local v24       #lastModified:J
    .restart local v26       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v27       #num:I
    .restart local v29       #path:Ljava/lang/String;
    .restart local v30       #rowId:J
    :cond_b
    :try_start_4
    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v20, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 1570
    .end local v26           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method private printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "volumeName"

    .prologue
    .line 1755
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1756
    .local v2, val:Landroid/content/ContentValues;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-static {p2}, Landroid/provider/MediaStore;->getMediaProviderDbLogUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1760
    .local v1, logUri:Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v3, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    :goto_0
    return-void

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in printToMediaProviderDBLog()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 11
    .parameter "fileList"
    .parameter "values"
    .parameter "playlistUri"

    .prologue
    .line 2104
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2105
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2106
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2107
    .local v6, rowId:J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2108
    .local v0, data:Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2113
    .end local v0           #data:Ljava/lang/String;
    .end local v6           #rowId:J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2114
    .local v5, len:I
    const/4 v4, 0x0

    .line 2115
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2116
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2117
    .local v2, entry:Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2119
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2120
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2121
    const-string v8, "audio_id"

    iget-wide v9, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2122
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v8, p3, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    add-int/lit8 v4, v4, 0x1

    .line 2115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2124
    :catch_0
    move-exception v1

    .line 2125
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #entry:Landroid/media/MediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2130
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2135
    const/4 v3, 0x0

    .line 2137
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2138
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2139
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2141
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, line:Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2143
    :goto_0
    if-eqz v2, :cond_1

    .line 2145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2146
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2151
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v4

    .line 2157
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2158
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2163
    .end local v1           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2159
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2160
    .local v0, e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2153
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2154
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2157
    if-eqz v3, :cond_3

    .line 2158
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2159
    :catch_2
    move-exception v0

    .line 2160
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2156
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2157
    :goto_3
    if-eqz v3, :cond_4

    .line 2158
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2161
    :cond_4
    :goto_4
    throw v5

    .line 2159
    :catch_3
    move-exception v0

    .line 2160
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2156
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #f:Ljava/io/File;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2153
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 17
    .parameter "entry"
    .parameter "fileList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2263
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2264
    .local v2, path:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2265
    .local v5, values:Landroid/content/ContentValues;
    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 2266
    .local v9, lastSlash:I
    if-gez v9, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad path "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2268
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 2271
    .local v12, rowId:J
    const-string/jumbo v1, "name"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2272
    .local v11, name:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 2273
    const-string/jumbo v1, "title"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2274
    if-nez v11, :cond_1

    .line 2276
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 2277
    .local v8, lastDot:I
    if-gez v8, :cond_3

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2282
    .end local v8           #lastDot:I
    :cond_1
    :goto_0
    const-string/jumbo v1, "name"

    invoke-virtual {v5, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const-string v1, "date_modified"

    move-object/from16 v0, p1

    iget-wide v15, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2285
    const-wide/16 v15, 0x0

    cmp-long v1, v12, v15

    if-nez v1, :cond_4

    .line 2286
    const-string v1, "_data"

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v1, v6, v5}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 2288
    .local v14, uri:Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2289
    const-string/jumbo v1, "members"

    invoke-static {v14, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2299
    .local v4, membersUri:Landroid/net/Uri;
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2300
    .local v3, playListDirectory:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v10

    .line 2301
    .local v10, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v10, :cond_5

    const/4 v7, 0x0

    .line 2303
    .local v7, fileType:I
    :goto_2
    const/16 v1, 0x29

    if-ne v7, v1, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2304
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2310
    :cond_2
    :goto_3
    return-void

    .line 2277
    .end local v3           #playListDirectory:Ljava/lang/String;
    .end local v4           #membersUri:Landroid/net/Uri;
    .end local v7           #fileType:I
    .end local v10           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v14           #uri:Landroid/net/Uri;
    .restart local v8       #lastDot:I
    :cond_3
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 2291
    .end local v8           #lastDot:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2292
    .restart local v14       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-interface {v1, v14, v5, v6, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2295
    const-string/jumbo v1, "members"

    invoke-static {v14, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2296
    .restart local v4       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-interface {v1, v4, v6, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2301
    .restart local v3       #playListDirectory:Ljava/lang/String;
    .restart local v10       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v7, v10, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2305
    .restart local v7       #fileType:I
    :cond_6
    const/16 v1, 0x2a

    if-ne v7, v1, :cond_7

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2306
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2307
    :cond_7
    const/16 v1, 0x2b

    if-ne v7, v1, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2308
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2313
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2314
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v8, 0x0

    .line 2318
    .local v8, fileList:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "media_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 2320
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2321
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaScanner$FileEntry;

    .line 2323
    .local v7, entry:Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v7, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2324
    if-eqz v8, :cond_0

    invoke-direct {p0, v7, v8}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2327
    .end local v7           #entry:Landroid/media/MediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2329
    if-eqz v8, :cond_1

    .line 2330
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2333
    :cond_1
    :goto_1
    return-void

    .line 2329
    :cond_2
    if-eqz v8, :cond_1

    .line 2330
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2329
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 2330
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2167
    const/4 v4, 0x0

    .line 2169
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2170
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2171
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2173
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2174
    .local v3, line:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2175
    :goto_0
    if-eqz v3, :cond_1

    .line 2177
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2178
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2179
    .local v1, equals:I
    if-lez v1, :cond_0

    .line 2180
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    .end local v1           #equals:I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2186
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .line 2192
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2193
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2198
    .end local v2           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2194
    .restart local v2       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2195
    .local v0, e:Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2188
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2189
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2192
    if-eqz v4, :cond_3

    .line 2193
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2194
    :catch_2
    move-exception v0

    .line 2195
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2191
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2192
    :goto_3
    if-eqz v4, :cond_4

    .line 2193
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2196
    :cond_4
    :goto_4
    throw v6

    .line 2194
    :catch_3
    move-exception v0

    .line 2195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2191
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #f:Ljava/io/File;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2188
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2236
    const/4 v2, 0x0

    .line 2238
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2239
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2240
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2242
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2243
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2246
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 2254
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2255
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2260
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2256
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2257
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2248
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2249
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2254
    if-eqz v2, :cond_1

    .line 2255
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2256
    :catch_2
    move-exception v0

    .line 2257
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2250
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2251
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2254
    if-eqz v2, :cond_1

    .line 2255
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2256
    :catch_4
    move-exception v0

    .line 2257
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2253
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2254
    :goto_3
    if-eqz v2, :cond_2

    .line 2255
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2258
    :cond_2
    :goto_4
    throw v4

    .line 2256
    :catch_5
    move-exception v0

    .line 2257
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2253
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2250
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2248
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 1632
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1633
    .local v9, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "/sdcard/DCIM/.thumbnails"

    .line 1634
    .local v8, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 1635
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 1636
    new-array v11, v1, [Ljava/lang/String;

    .line 1638
    :cond_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v0, v11

    if-ge v13, v0, :cond_1

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1640
    .local v12, fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1638
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1644
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1650
    .local v7, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1653
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1654
    .restart local v12       #fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1655
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1658
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1662
    .local v10, fileToDelete:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1663
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1667
    .end local v10           #fileToDelete:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    if-eqz v7, :cond_5

    .line 1669
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1674
    .end local v7           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 1671
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 521
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 523
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 525
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 527
    return-void
.end method

.method private static setExternalStorageSdPath(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 507
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 508
    const-string/jumbo v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    sput-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    .line 509
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 510
    .local v1, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 511
    aget-object v2, v1, v0

    .line 512
    .local v2, volume:Landroid/os/storage/StorageVolume;
    const-string/jumbo v3, "sd"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 518
    .end local v0           #i:I
    .end local v1           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void

    .line 510
    .restart local v0       #i:I
    .restart local v1       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkDefaultSounds(Ljava/lang/String;)V
    .locals 6
    .parameter "volumeName"

    .prologue
    .line 2372
    const-string v0, "MediaScanner"

    const-string v4, "checkDefaultSounds"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2375
    .local v3, URIdefaultSound:Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 2376
    .local v2, URIsetting:Landroid/net/Uri;
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2378
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 2379
    const-string v0, "MediaScanner"

    const-string v4, "Context resolver is null!!!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :goto_0
    return-void

    .line 2383
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 2386
    const-string v4, "alarm_alert"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    const-string/jumbo v4, "notification_sound"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string/jumbo v4, "ringtone"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2359
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 2361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 2364
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2365
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2366
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 14
    .parameter "path"

    .prologue
    .line 1993
    move-object v13, p1

    .line 1996
    .local v13, key:Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_1

    .line 1999
    const-string v3, "_data LIKE ?1 AND lower(_data)=lower(?1)"

    .line 2000
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2006
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    .line 2008
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 2010
    if-eqz v12, :cond_2

    .line 2011
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2012
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2013
    .local v6, rowId:J
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2014
    .local v11, format:I
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2015
    .local v9, lastModified:J
    new-instance v5, Landroid/media/MediaScanner$FileEntry;

    move-object v8, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    if-eqz v12, :cond_0

    .line 2021
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2024
    .end local v6           #rowId:J
    .end local v9           #lastModified:J
    .end local v11           #format:I
    :cond_0
    :goto_1
    return-object v5

    .line 2002
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_1
    const-string v3, "_data=?"

    .line 2003
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_0

    .line 2020
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v12, :cond_3

    .line 2021
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2024
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2018
    :catch_0
    move-exception v0

    .line 2020
    if-eqz v12, :cond_3

    .line 2021
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2020
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_4

    .line 2021
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2353
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2354
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 34
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1770
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 1771
    .local v27, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1772
    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 1773
    .local v22, prescanBulkDeleted:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1777
    .local v20, prescan:J
    new-instance v30, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v31, v0

    const/16 v32, 0x64

    invoke-direct/range {v30 .. v32}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1780
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_3

    .line 1781
    sget-object v30, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v30, :cond_0

    aget-object v30, p1, v14

    sget-object v31, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    :cond_0
    aget-object v30, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    aget-object v30, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 1782
    :cond_1
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "processDirectory :  "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, p1, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    aget-object v30, p1, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1787
    .local v5, bulkInserterTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/media/MediaInserter;->flushAll()V

    .line 1788
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v30, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v5

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 1780
    .end local v5           #bulkInserterTime:J
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1794
    :cond_3
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 1798
    .local v25, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1801
    .local v10, end:J
    const-wide/16 v16, 0x0

    .line 1802
    .local v16, makeEntryPercentage:J
    const-wide/16 v18, 0x0

    .line 1803
    .local v18, parsingPercentage:J
    const-wide/16 v7, 0x0

    .line 1804
    .local v7, bulkInsertingPercentage:J
    const-wide/16 v3, 0x0

    .line 1805
    .local v3, bitmapDecodingPercentage:J
    const-wide/16 v12, 0x0

    .line 1807
    .local v12, exifExtractingPercentage:J
    sub-long v30, v25, v20

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_4

    .line 1808
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x64

    mul-long v30, v30, v32

    sub-long v32, v25, v20

    div-long v16, v30, v32

    .line 1809
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x64

    mul-long v30, v30, v32

    sub-long v32, v25, v20

    div-long v18, v30, v32

    .line 1810
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x64

    mul-long v30, v30, v32

    sub-long v32, v25, v20

    div-long v3, v30, v32

    .line 1811
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x64

    mul-long v30, v30, v32

    sub-long v32, v25, v20

    div-long v12, v30, v32

    .line 1812
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x64

    mul-long v30, v30, v32

    sub-long v32, v25, v20

    div-long v7, v30, v32

    .line 1815
    :cond_4
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " prescan time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v20, v27

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "    scan time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v25, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms (makeEntry time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms ~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%),  (parsing time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms ~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%),  (bitmapDecoding time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms ~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%), (exifExtracting time : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms ~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%), (bulkInserter time : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms ~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%)\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "postscan time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v10, v25

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms (bulkDeleter : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "   total time: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v10, v27

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "ms\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "checked files: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  directories : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "  (I: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", U: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 1823
    .local v24, sb:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1825
    .local v15, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1826
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/media/MediaScanner$FileParsingTime;

    .line 1827
    .local v29, time:Landroid/media/MediaScanner$FileParsingTime;
    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaScanner$FileParsingTime;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1842
    .end local v3           #bitmapDecodingPercentage:J
    .end local v7           #bulkInsertingPercentage:J
    .end local v10           #end:J
    .end local v12           #exifExtractingPercentage:J
    .end local v14           #i:I
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v16           #makeEntryPercentage:J
    .end local v18           #parsingPercentage:J
    .end local v20           #prescan:J
    .end local v22           #prescanBulkDeleted:J
    .end local v24           #sb:Ljava/lang/StringBuffer;
    .end local v25           #scan:J
    .end local v27           #start:J
    .end local v29           #time:Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v9

    .line 1844
    .local v9, e:Landroid/database/SQLException;
    const-string v30, "MediaScanner"

    const-string v31, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1851
    .end local v9           #e:Landroid/database/SQLException;
    :cond_5
    :goto_2
    return-void

    .line 1829
    .restart local v3       #bitmapDecodingPercentage:J
    .restart local v7       #bulkInsertingPercentage:J
    .restart local v10       #end:J
    .restart local v12       #exifExtractingPercentage:J
    .restart local v14       #i:I
    .restart local v15       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .restart local v16       #makeEntryPercentage:J
    .restart local v18       #parsingPercentage:J
    .restart local v20       #prescan:J
    .restart local v22       #prescanBulkDeleted:J
    .restart local v24       #sb:Ljava/lang/StringBuffer;
    .restart local v25       #scan:J
    .restart local v27       #start:J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_8

    :cond_7
    const-string v30, "MediaScanner"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " parsing stat: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_8
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 1831
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 1832
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 1833
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 1834
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 1835
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 1836
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 1837
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 1838
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 1840
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->checkDefaultSounds(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 1845
    .end local v3           #bitmapDecodingPercentage:J
    .end local v7           #bulkInsertingPercentage:J
    .end local v10           #end:J
    .end local v12           #exifExtractingPercentage:J
    .end local v14           #i:I
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v16           #makeEntryPercentage:J
    .end local v18           #parsingPercentage:J
    .end local v20           #prescan:J
    .end local v22           #prescanBulkDeleted:J
    .end local v24           #sb:Ljava/lang/StringBuffer;
    .end local v25           #scan:J
    .end local v27           #start:J
    :catch_1
    move-exception v9

    .line 1847
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    const-string v30, "MediaScanner"

    const-string v31, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1848
    .end local v9           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v9

    .line 1849
    .local v9, e:Landroid/os/RemoteException;
    const-string v30, "MediaScanner"

    const-string v31, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 20
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 1937
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1938
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1939
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_1

    const/16 v16, 0x0

    .line 1940
    .local v16, fileType:I
    :goto_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1941
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 1943
    .local v5, lastModifiedSeconds:J
    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1947
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1948
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "_size"

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1949
    const-string v2, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1951
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 1952
    .local v19, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    .end local v5           #lastModifiedSeconds:J
    .end local v18           #values:Landroid/content/ContentValues;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1939
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fileType:I
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v16, v0

    goto :goto_0

    .line 1954
    .restart local v5       #lastModifiedSeconds:J
    .restart local v14       #file:Ljava/io/File;
    .restart local v16       #fileType:I
    .restart local v18       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 1955
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1960
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1961
    const/4 v15, 0x0

    .line 1963
    .local v15, fileList:Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1965
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 1967
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v13

    .line 1968
    .local v13, entry:Landroid/media/MediaScanner$FileEntry;
    if-eqz v13, :cond_3

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v5           #lastModifiedSeconds:J
    move-result-object v15

    .line 1972
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1985
    .end local v13           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1986
    if-eqz v15, :cond_0

    .line 1987
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1976
    .restart local v5       #lastModifiedSeconds:J
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1982
    .end local v5           #lastModifiedSeconds:J
    :catch_1
    move-exception v12

    .line 1983
    .restart local v12       #e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1985
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1986
    if-eqz v15, :cond_0

    .line 1987
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1979
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v5       #lastModifiedSeconds:J
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1985
    .end local v5           #lastModifiedSeconds:J
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1986
    if-eqz v15, :cond_6

    .line 1987
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1857
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1858
    .local v12, str:Ljava/lang/String;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scanSingleFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/4 v12, 0x0

    .line 1861
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1862
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 1864
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1867
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 1870
    .local v3, lastModifiedSeconds:J
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1874
    .end local v3           #lastModifiedSeconds:J
    .end local v11           #file:Ljava/io/File;
    .end local v12           #str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1872
    :catch_0
    move-exception v10

    .line 1873
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
