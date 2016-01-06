.class public Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# static fields
.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field static final INFORMATION_MSG_TIMEOUT_MS:I = 0xbb8

.field private static final KEY_PATTERN_CHOICE:Ljava/lang/String; = "chosenPattern"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "uiStage"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 141
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 292
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 294
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 518
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 522
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 523
    .local v2, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 525
    .local v1, "lockVirgin":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 527
    .local v0, "isFallback":Z
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 528
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 530
    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setResult(I)V

    .line 535
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 536
    return-void

    .end local v0    # "isFallback":Z
    .end local v1    # "lockVirgin":Z
    :cond_1
    move v1, v4

    .line 523
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 132
    :cond_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 373
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 374
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 378
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 386
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_4
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 392
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_6
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_8
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 403
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 404
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 308
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    .line 309
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 319
    const v5, 0x7f04001f

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 320
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 321
    const v5, 0x7f0e0045

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 322
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 323
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 326
    const v5, 0x7f0e0046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 328
    const v5, 0x7f0e0047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 329
    const v5, 0x7f0e0048

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 331
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v5, 0x7f0e0044

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 339
    .local v3, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "confirm_credentials"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    .local v0, "confirmCredentials":Z
    if-nez p3, :cond_2

    .line 345
    if-eqz v0, :cond_1

    .line 348
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 349
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    const/16 v6, 0x37

    invoke-virtual {v5, v6, v8, v8}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 352
    .local v1, "launchedConfirmationActivity":Z
    if-nez v1, :cond_0

    .line 353
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 366
    .end local v1    # "launchedConfirmationActivity":Z
    :cond_0
    :goto_0
    return-object v4

    .line 356
    :cond_1
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 360
    :cond_2
    const-string v5, "chosenPattern"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "patternString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 362
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 364
    :cond_3
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string v6, "uiStage"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 410
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_0

    .line 412
    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 420
    :goto_0
    return v0

    .line 416
    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_1

    .line 417
    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7
    .param p1, "stage"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    const/4 v6, 0x0

    .line 440
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 442
    .local v0, "previousStage":Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 446
    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :goto_0
    iget v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 455
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_1
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_3

    .line 461
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :goto_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    iget-boolean v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    .line 473
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 480
    :goto_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 482
    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 508
    :goto_4
    :pswitch_0
    if-eq v0, p1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 484
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 487
    :pswitch_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 490
    :pswitch_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 491
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 496
    :pswitch_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 499
    :pswitch_5
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 500
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
