.class Lcom/android/internal/telephony/cat/RilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/RilMessageDecoder$1;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;,
        Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private static mSimCount:I


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

.field private mSlotId:I

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 128
    iput p3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSlotId:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    check-cast v0, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 136
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 5
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 178
    iget v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v3, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    .line 218
    .local v0, "decodingStarted":Z
    :goto_0
    return v0

    .line 181
    .end local v0    # "decodingStarted":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 182
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 188
    .end local v0    # "decodingStarted":Z
    :pswitch_1
    const/4 v2, 0x0

    .line 189
    .local v2, "rawData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMessageParams raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    const/4 v0, 0x1

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 192
    .end local v0    # "decodingStarted":Z
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 196
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 202
    .end local v0    # "decodingStarted":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 210
    iget-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 211
    const/4 v0, 0x0

    .line 213
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .locals 6
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    const-class v2, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v3, :cond_0

    .line 66
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    sput v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    .line 67
    sget v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    new-array v3, v3, [Lcom/android/internal/telephony/cat/RilMessageDecoder;

    sput-object v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ge v0, v3, :cond_0

    .line 69
    sget-object v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    sget v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ge p2, v3, :cond_2

    .line 74
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object v1, v1, p2

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    aput-object v3, v1, p2

    .line 82
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object v1, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v1

    .line 78
    :cond_2
    :try_start_1
    const-string v3, "RilMessageDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invaild slot id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 4
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    new-instance v3, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    iput-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 224
    iput-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->dispose()V

    .line 226
    iput-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 227
    iput-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 228
    iput-object v3, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 230
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v1, :cond_2

    .line 231
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->quit()V

    .line 233
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSlotId:I

    aput-object v3, v1, v2

    .line 236
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 237
    sget-object v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 242
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 243
    sput-object v3, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 246
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 236
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder;->mSlotId:I

    return v0
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 104
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 106
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 108
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 2
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 95
    return-void
.end method
