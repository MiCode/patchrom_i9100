.class public Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_DISATANCE:D

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private h:Ljava/nio/FloatBuffer;

.field private h_buf:I

.field private h_handle:I

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private mWallpaperPath:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/16 v3, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 362
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 86
    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 88
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 91
    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aHeights;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uMESH_SIZE_WIDTH;\n uniform float uMESH_SIZE_HEIGHT;\n uniform float uNUM_DETAILS_WIDTH;\n uniform float uNUM_DETAILS_HEIGHT;\n uniform float uRefractiveIndex;\n uniform float uRotate;\n void main() { \n  float maxX = uMESH_SIZE_WIDTH / 2.0; \n  float maxY = uMESH_SIZE_HEIGHT / 2.0; \n  float rimo = uRefractiveIndex - 1.0;\n   vec4 pos = aPosition;\n  vec4 heights = aHeights; \n  float len = heights.x; \n  vec3 v = vec3( pos.x, pos.y, len * 0.25 ); \n  vec2 n = ( vec2( len ) - heights.yz ) * 0.25; \n  float nz = sqrt(dot( n, n ) + 1.0 ); \n  n = n / nz; \n  vec3 d = vec3( v.x, v.y, v.z + 30.0 ); \n   len = sqrt( dot( d, d ) ); \n  d = d / len; \n  float t = dot( d, vec3( n.x, n.y, 1.0 ) ) * rimo; \n  d.x += n.x * t; \n  d.y += n.y * t; \n  float r0, u0, v0; \n  r0 = ( 30.9 - v.z ) / d.z; \n  u0 = ( d.x * r0 + v.x ) / maxX * 0.25 + 0.5; \n  v0 = ( d.y * r0 + v.y ) / maxY * -0.25 + 0.5; \n  float uxx = n.x * 0.5 + 0.5 + pos.y / uMESH_SIZE_WIDTH * 0.25; \n  float vxx = n.y * 0.5 + 0.5 + pos.x / uMESH_SIZE_HEIGHT * 0.25; \n  vTexture0Coord = vec2( uxx, vxx ); \n  vTexture1Coord = vec2( u0, v0 ); \n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    .line 140
    const-string v2, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 158
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 159
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 161
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 162
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 164
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 165
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 167
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 176
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 177
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 178
    new-array v2, v4, [S

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 202
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    .line 203
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 204
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    .line 205
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 217
    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 218
    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 219
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 220
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 225
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 226
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 231
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 232
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 241
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 242
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 246
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 247
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 250
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 251
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 254
    const/high16 v2, -0x3dd0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 255
    const/high16 v2, -0x3e48

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 258
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 259
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 260
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 261
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 264
    const/high16 v2, 0x4234

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 265
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 266
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 267
    const/high16 v2, 0x4238

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 268
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 269
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 272
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 273
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 278
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 285
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 286
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 287
    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 288
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 289
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 290
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 291
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 292
    const/16 v2, 0x19

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 295
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 296
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 297
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 298
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 299
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 300
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 301
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 302
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 309
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 310
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 311
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 312
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 315
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 316
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 317
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 319
    const-wide/high16 v2, 0x4072

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 320
    const-wide/high16 v2, 0x407b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 321
    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 323
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 324
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    .line 325
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 326
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 327
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 328
    const-wide/high16 v2, 0x403e

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    .line 334
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    .line 336
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 351
    const/16 v2, 0x2f0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 352
    const/16 v2, 0x2d0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 364
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 367
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 369
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 370
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 371
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 373
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 374
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 375
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 376
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 377
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 378
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 382
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 384
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 387
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1706
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1707
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1711
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1719
    :goto_0
    if-ne v2, v4, :cond_0

    .line 1720
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1724
    :goto_1
    return-void

    .line 1713
    :catch_0
    move-exception v1

    .line 1715
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1722
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1668
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .line 1670
    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    .line 1681
    :cond_0
    return-void

    .line 1673
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 1677
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1678
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    .line 1679
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    .line 1677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1204
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    .line 1205
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1206
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1302
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1304
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 1330
    :cond_0
    :goto_0
    return v2

    .line 1308
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1310
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 1311
    goto :goto_0

    .line 1314
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1316
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 1318
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1319
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1320
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1321
    new-array v0, v6, [I

    .line 1322
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1324
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1325
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1326
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1371
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1372
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1373
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1374
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1375
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1377
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1380
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1382
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1383
    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8893

    const v3, 0x8892

    const/4 v2, 0x0

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1225
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1231
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1232
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1234
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1235
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1236
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1238
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1239
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1241
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1243
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1335
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1337
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1339
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1340
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1341
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1342
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1344
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1345
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1346
    const/4 v1, 0x0

    .line 1350
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    .line 1355
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    .line 1356
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aHeights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    .line 1357
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    .line 1358
    return-void
.end method

.method private loadTexture()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 1247
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1249
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Ink Effect, bitmapOriginal == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 1261
    :cond_1
    :goto_0
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 1262
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    .line 1265
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1266
    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1267
    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1277
    :cond_2
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    .line 1281
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1282
    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1283
    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1285
    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1286
    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1290
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1294
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1298
    :cond_3
    return-void

    .line 1256
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    .line 1210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    .line 1211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    .line 1214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    .line 1215
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    .line 1216
    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1505
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1506
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1507
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1508
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1513
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1514
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1515
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 1516
    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1391
    const/4 v3, 0x1

    .line 1392
    .local v3, xSpan:I
    const/4 v2, 0x1

    .line 1394
    .local v2, ySpan:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v0, v1, :cond_0

    .line 1395
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1396
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1397
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1398
    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1406
    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->move([F[FIIIIIILjava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    if-lez v0, :cond_3

    .line 1409
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v12}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1412
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    move v9, v2

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    .line 1415
    move v11, v3

    .local v11, j:I
    :goto_2
    if-ge v11, v5, :cond_1

    .line 1416
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v0, v11

    add-int v10, v0, v9

    .line 1417
    .local v10, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v13, v0, v10

    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v13, v0, v10

    .line 1415
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1400
    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v9           #i:I
    .end local v10           #idx:I
    .end local v11           #j:I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1401
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1402
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1403
    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto :goto_0

    .line 1414
    .restart local v9       #i:I
    .restart local v11       #j:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1423
    .end local v9           #i:I
    .end local v11           #j:I
    :cond_2
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1426
    :cond_3
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v9, v0, :cond_5

    .line 1427
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v11, v0, :cond_4

    .line 1428
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v9

    mul-int/lit8 v10, v0, 0x3

    .line 1429
    .restart local v10       #idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1430
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1431
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1427
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1426
    .end local v10           #idx:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1434
    .end local v11           #j:I
    :cond_5
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1483
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1484
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1485
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1486
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1487
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1488
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1489
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1490
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1491
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1492
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1493
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1494
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1495
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1496
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1497
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1498
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1499
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1500
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1501
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1124
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1126
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1127
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;I)V

    .line 1128
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1130
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1115
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1118
    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1448
    return-void
.end method

.method private setBackground(Z)V
    .locals 12
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1752
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path_ripple"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1753
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1754
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1757
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1758
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrenRippletWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1761
    :cond_1
    const/4 v5, 0x0

    .line 1762
    .local v5, inputStream:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v8, wallpaperFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1765
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1797
    .restart local v5       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1798
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1799
    .local v7, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v7, :cond_2

    .line 1801
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080405

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 1802
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 1804
    .restart local v7       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1805
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1828
    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1829
    if-eqz p1, :cond_3

    .line 1830
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080630

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1838
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 1769
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1770
    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1771
    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v3, defaultWallpaperFilePng:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v2, defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1776
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1778
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1780
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1782
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1784
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1786
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1788
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1792
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080405

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto/16 :goto_0

    .line 1808
    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    .end local v2           #defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    .end local v3           #defaultWallpaperFilePng:Ljava/io/File;
    :cond_9
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1810
    .local v6, pBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_a

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_b

    .line 1812
    :cond_a
    if-nez v6, :cond_c

    .line 1814
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080405

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 1822
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1825
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1833
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 1835
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1818
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #pBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_c
    :try_start_1
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1739
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080630

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1740
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_0
    return-void

    .line 1742
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1743
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    .line 392
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    .line 394
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 395
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 396
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 397
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 398
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 399
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 400
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 403
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 404
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 408
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 409
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 412
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 413
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 416
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 417
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 420
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 421
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 422
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 423
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 426
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 427
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 428
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 429
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 430
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 431
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 434
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 435
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 436
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 437
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 438
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 439
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 440
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 441
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 442
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 680
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 683
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 684
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 688
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 691
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 692
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 696
    :cond_3
    return-void

    .line 445
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_7

    .line 448
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 449
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 451
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 452
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 453
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 454
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 455
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 458
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 459
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 463
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 464
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 467
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 468
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 471
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 472
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 475
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 476
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 477
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 478
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 481
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 482
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 483
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 484
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 485
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 486
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 489
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 490
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 491
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 492
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 493
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 494
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 495
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 496
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 497
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 498
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 499
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 500
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 501
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 502
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 506
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_a

    .line 509
    :cond_9
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 510
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 511
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 512
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 513
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 514
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 515
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 518
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 519
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 523
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 524
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 527
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 528
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 531
    const v0, -0x3ddacccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 532
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 535
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 536
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 537
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 538
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 541
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 542
    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 543
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 544
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 545
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 546
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 549
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 550
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 551
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 552
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 553
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 554
    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 555
    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 556
    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 557
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    .line 562
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_d

    .line 565
    :cond_c
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 566
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 567
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 568
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 569
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 570
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 571
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 574
    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 575
    const v0, 0x3f59999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 579
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 580
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 583
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 584
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 587
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 588
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 591
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 592
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 593
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 594
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 597
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 598
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 599
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 600
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 603
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 604
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 605
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 606
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 607
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 608
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 609
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 610
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 611
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 613
    const-wide/high16 v0, 0x4068

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 614
    const-wide/high16 v0, 0x4075

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 615
    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 616
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 617
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 622
    :cond_d
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 623
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 624
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 625
    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 626
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 627
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 628
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 631
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 632
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 636
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 637
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 640
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 641
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 644
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 645
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 648
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 649
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 650
    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 651
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 654
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 655
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 656
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 657
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 658
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 659
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 662
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 663
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 664
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 665
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 666
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 667
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 668
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 669
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 670
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 672
    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 673
    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 674
    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 675
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 676
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    .line 1644
    const/4 v1, 0x0

    .line 1645
    .local v1, tempX:F
    move v2, p1

    .line 1647
    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    .line 1649
    int-to-float v1, v0

    .line 1650
    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1651
    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1655
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1657
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1521
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1733
    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    .line 1472
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    .line 1467
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    .line 888
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 895
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 896
    const/4 v1, 0x0

    .line 1055
    :goto_0
    return v1

    .line 900
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 902
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 903
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 904
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 909
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_5

    .line 911
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 912
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 913
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 914
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 925
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 927
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_3

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 932
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 940
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 944
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    .line 946
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 947
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 956
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 957
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    .line 958
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    .line 959
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 960
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 962
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 963
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 964
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1055
    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 918
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 919
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    .line 920
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    .line 921
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 951
    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 952
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    .line 966
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 968
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .line 969
    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .line 970
    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .line 971
    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 972
    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    .line 973
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .line 974
    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .line 975
    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 976
    .local v10, distForwWave:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 977
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 978
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 980
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    .line 982
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_8

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 985
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 989
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 990
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 991
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 995
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 997
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1000
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1001
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    .line 1002
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    .line 1004
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_4

    .line 1006
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .line 1012
    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:I
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1014
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_b

    .line 1017
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1019
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1020
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1021
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1022
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1024
    :cond_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    .line 1025
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 1026
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_e

    .line 1027
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1029
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1030
    .restart local v13       #dx:F
    float-to-double v1, v13

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_f

    .line 1031
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1033
    :cond_f
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1034
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1035
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1036
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1040
    .end local v13           #dx:F
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1041
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1043
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    .line 1045
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1047
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_11

    .line 1048
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1052
    :cond_11
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0xde1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 812
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_2

    .line 814
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadTexture()V

    .line 816
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 817
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    .line 822
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v2, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    :goto_0
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 838
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 839
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 840
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 843
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 844
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 845
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 846
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 847
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uRefractiveIndex"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 849
    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 850
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 851
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 854
    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 855
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 856
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 859
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 861
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 864
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 865
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 866
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 869
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 870
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 871
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 874
    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 875
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 876
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 877
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 879
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 881
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 883
    :cond_1
    return-void

    .line 828
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_3

    .line 830
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 834
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->move()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1662
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1664
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1686
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    .line 1689
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1691
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1697
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1699
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1701
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 723
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    .line 729
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 730
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 738
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 739
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 765
    :cond_0
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 774
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 776
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 779
    const/4 v14, 0x0

    .line 780
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 781
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 783
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_4

    .line 785
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 786
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 797
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 802
    return-void

    .line 743
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 744
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 751
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 752
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 753
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 755
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 757
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 758
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 771
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_1

    .line 791
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 792
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 704
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 711
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createBuffers()V

    .line 712
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShaderProp()V

    .line 713
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeBuffers()V

    .line 715
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    .line 1463
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1464
    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    .line 1458
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 1459
    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    .prologue
    .line 1842
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 1845
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1147
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1148
    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    .line 1552
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1553
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1554
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1555
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1557
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1153
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1154
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 1561
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    .line 1563
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1525
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1534
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1536
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1546
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1548
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1061
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1062
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1066
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1078
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1084
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1085
    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1110
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1592
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1594
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 1595
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1596
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1607
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1608
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1610
    return-void

    .line 1601
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 1602
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1603
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    .line 1614
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    .line 1616
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1640
    :goto_0
    return-void

    .line 1621
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1622
    const/4 v0, 0x0

    .line 1624
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 1625
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    .line 1630
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 1631
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1632
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1638
    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    .line 1627
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 1634
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1635
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1569
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1571
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 1572
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1573
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1583
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1584
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 1586
    return-void

    .line 1577
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 1578
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1579
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method
