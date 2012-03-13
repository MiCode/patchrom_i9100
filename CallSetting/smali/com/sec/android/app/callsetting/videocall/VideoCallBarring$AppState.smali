.class final enum Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;
.super Ljava/lang/Enum;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

.field public static final enum BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

.field public static final enum INITIAL_QUERY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

.field public static final enum INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

.field public static final enum NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const-string v1, "INPUT_READY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 158
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const-string v1, "BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 159
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 160
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const-string v1, "INITIAL_QUERY"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    sget-object v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->$VALUES:[Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;
    .locals 1
    .parameter

    .prologue
    .line 156
    const-class v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->$VALUES:[Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-virtual {v0}, [Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    return-object v0
.end method
