.class public Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
.super Landroid/widget/FrameLayout;
.source "FmReceiveView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;


# static fields
.field private static final DEBUG:Z = true

.field static HIGH_SIGNAL_STRENGTH:I = 0x0

.field static LOW_SIGNAL_STRENGTH:I = 0x0

.field static MEDIUM_SIGNAL_STRENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmReceiveView"

.field private static final digitDrawables:[I


# instance fields
.field private digit1:Landroid/widget/ImageView;

.field private digit2:Landroid/widget/ImageView;

.field private digit3:Landroid/widget/ImageView;

.field private digit4:Landroid/widget/ImageView;

.field private digit5:Landroid/widget/ImageView;

.field private frequency:I

.field private frequencyStep:I

.field private lastFrequencyBeforeSliderDown:I

.field private mContext:Landroid/content/Context;

.field private mInCall:Z

.field private mInSearching:Z

.field private mIsMute:Z

.field public mIsSpeaker:Z

.field private mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

.field private slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x53

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->HIGH_SIGNAL_STRENGTH:I

    .line 72
    const/16 v0, 0x5b

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MEDIUM_SIGNAL_STRENGTH:I

    .line 73
    const/16 v0, 0x63

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->LOW_SIGNAL_STRENGTH:I

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    return-void

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsMute:Z

    .line 110
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z

    .line 111
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsSpeaker:Z

    .line 113
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInSearching:Z

    .line 129
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method private updatePressedButton()V
    .locals 8

    .prologue
    .line 232
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v7}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v2

    .line 233
    .local v2, channels:[I
    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v7}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannelsName()[Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, channelsName:[Ljava/lang/String;
    const/16 v6, 0x15

    .local v6, i:I
    :goto_0
    const/16 v7, 0x20

    if-gt v6, v7, :cond_2

    .line 235
    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    .local v0, b:Landroid/widget/Button;
    add-int/lit8 v7, v6, -0x15

    add-int/lit8 v1, v7, 0x1

    .line 237
    .local v1, channel:I
    add-int/lit8 v7, v1, -0x1

    aget v5, v2, v7

    .line 238
    .local v5, freq:I
    add-int/lit8 v7, v1, -0x1

    aget-object v4, v3, v7

    .line 239
    .local v4, freName:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    if-ne v5, v7, :cond_0

    .line 240
    const v7, -0xff5211

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v7, 0x7f020002

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const v7, -0x8090f

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 245
    if-eqz v5, :cond_1

    .line 247
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v7, 0x7f02000f

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 252
    :cond_1
    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v7, 0x7f020003

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 259
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #channel:I
    .end local v4           #freName:Ljava/lang/String;
    .end local v5           #freq:I
    :cond_2
    return-void
.end method


# virtual methods
.method public init(Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;)V
    .locals 10
    .parameter "eventHandler"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 135
    const-string v5, "FmReceiveView"

    const-string v6, "FmReceiveView(ctx, eventHandler)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    .line 151
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    .line 152
    const v5, 0x7f070027

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    .line 153
    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit3:Landroid/widget/ImageView;

    .line 154
    const v5, 0x7f070029

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit4:Landroid/widget/ImageView;

    .line 155
    const v5, 0x7f07002a

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit5:Landroid/widget/ImageView;

    .line 157
    const v5, 0x7f070010

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    .line 158
    const/16 v5, 0x12

    new-array v0, v5, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v0, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v0, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    aput-object v5, v0, v7

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v0, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v0, v5

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v0, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v0, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v0, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v0, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_9

    aput-object v6, v0, v5

    const/16 v5, 0xa

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v0, v5

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v0, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v0, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v0, v5

    const/16 v5, 0xe

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v0, v5

    const/16 v5, 0xf

    new-array v6, v7, [I

    fill-array-data v6, :array_f

    aput-object v6, v0, v5

    const/16 v5, 0x10

    new-array v6, v7, [I

    fill-array-data v6, :array_10

    aput-object v6, v0, v5

    const/16 v5, 0x11

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v0, v5

    .line 180
    .local v0, buttonTranslationTable:[[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 181
    aget-object v5, v0, v2

    aget v1, v5, v8

    .line 182
    .local v1, from:I
    aget-object v5, v0, v2

    aget v3, v5, v9

    .line 183
    .local v3, to:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 184
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 185
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1           #from:I
    .end local v3           #to:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v5, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setListener(Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySliderEventListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    .line 190
    return-void

    .line 158
    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x7t 0x7ft
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x17t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x14t 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x16t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x15t 0x0t 0x7t 0x7ft
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xft 0x0t 0x7t 0x7ft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x19t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1at 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x1bt 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1ct 0x0t 0x7t 0x7ft
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1dt 0x0t 0x7t 0x7ft
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x1et 0x0t 0x7t 0x7ft
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1ft 0x0t 0x7t 0x7ft
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x20t 0x0t 0x7t 0x7ft
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x21t 0x0t 0x7t 0x7ft
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x22t 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x23t 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x24t 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 196
    .local v0, buttonId:I
    const-string v2, "FmReceiveView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v2, 0x20

    if-gt v0, v2, :cond_1

    .line 198
    add-int/lit8 v1, v0, -0x15

    .line 200
    .local v1, position:I
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v2

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2, v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->selectChannel(I)V

    .line 225
    .end local v1           #position:I
    :goto_0
    return-void

    .line 203
    .restart local v1       #position:I
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2, v1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->setChannel(I)V

    .line 204
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 209
    .end local v1           #position:I
    :cond_1
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 210
    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsMute:Z

    if-eqz v2, :cond_3

    .line 212
    const/16 v0, 0x9

    .line 213
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMutedState(ZZ)V

    .line 221
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v2, v0, v5}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->handleButtonEvent(II)V

    goto :goto_0

    .line 216
    :cond_3
    const/16 v0, 0x8

    .line 217
    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z

    invoke-virtual {p0, v5, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMutedState(ZZ)V

    goto :goto_1
.end method

.method public onSliderCancel()V
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->lastFrequencyBeforeSliderDown:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 444
    return-void
.end method

.method public onSliderDown()V
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->lastFrequencyBeforeSliderDown:I

    .line 440
    return-void
.end method

.method public onSliderDrag(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyDigits(I)V

    .line 450
    return-void
.end method

.method public onSliderSet(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->setFrequency(I)V

    .line 454
    return-void
.end method

.method public setAutoSearch(Z)V
    .locals 1
    .parameter "inAutoSearch"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    iput-boolean p1, v0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInAutoSearch:Z

    .line 459
    return-void
.end method

.method protected setFrequencyDigits(I)V
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit5:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    rem-int/lit8 v6, p1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    div-int/lit8 p1, p1, 0xa

    .line 282
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit4:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    rem-int/lit8 v6, p1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    div-int/lit8 p1, p1, 0xa

    .line 284
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit3:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    rem-int/lit8 v6, p1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    div-int/lit8 p1, p1, 0xa

    .line 286
    rem-int/lit8 v1, p1, 0xa

    .line 287
    .local v1, d2:I
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    div-int/lit8 p1, p1, 0xa

    .line 289
    rem-int/lit8 v0, p1, 0xa

    .line 290
    .local v0, d1:I
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    sget-object v5, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digitDrawables:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    if-nez v0, :cond_2

    .line 294
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit5:Landroid/widget/ImageView;

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequencyStep:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    return-void

    :cond_1
    move v2, v3

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->digit2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setFrequencyGraphics(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 273
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequency:I

    .line 274
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setFreq(I)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyDigits(I)V

    .line 276
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updatePressedButton()V

    .line 277
    return-void
.end method

.method setFrequencyStep(I)V
    .locals 0
    .parameter "frequencyStep"

    .prologue
    .line 423
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->frequencyStep:I

    .line 424
    return-void
.end method

.method setMinMaxFrequencies(II)V
    .locals 1
    .parameter "minFreq"
    .parameter "maxFreq"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->setFrequencyRange(II)V

    .line 420
    return-void
.end method

.method public declared-synchronized setMutedState(ZZ)V
    .locals 4
    .parameter "isMute"
    .parameter "inCall"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string v1, "FmReceiveView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMutedState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsMute:Z

    .line 369
    iput-boolean p2, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInCall:Z

    .line 371
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 372
    .local v0, ib:Landroid/widget/ImageButton;
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 373
    :cond_0
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 377
    :goto_0
    if-nez p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 375
    :cond_1
    const v1, 0x7f020023

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    .end local v0           #ib:Landroid/widget/ImageButton;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 377
    .restart local v0       #ib:Landroid/widget/ImageButton;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setSeekStatus(ZZ)V
    .locals 4
    .parameter "seekInProgress"
    .parameter "tuneInProgress"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    monitor-enter p0

    const/16 v2, 0xa

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 429
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 430
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_2

    move v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 431
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    .line 428
    goto :goto_0

    :cond_1
    move v2, v1

    .line 429
    goto :goto_1

    :cond_2
    move v2, v1

    .line 430
    goto :goto_2

    :cond_3
    move v0, v1

    .line 431
    goto :goto_3

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stationSearch(Z)V
    .locals 1
    .parameter "inSearch"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->slider:Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;

    iput-boolean p1, v0, Lcom/broadcom/bt/app/fm/rx/FmRadioFrequencySlider;->mInSearch:Z

    .line 462
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mInSearching:Z

    .line 463
    return-void
.end method

.method updateChannelButtons()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updatePressedButton()V

    .line 229
    return-void
.end method

.method updateSearchChannelButton(II)V
    .locals 8
    .parameter "position"
    .parameter "frequ"

    .prologue
    .line 467
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTouchEventhandler:Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;

    invoke-interface {v3}, Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;->getChannels()[I

    move-result-object v1

    .line 469
    .local v1, channels:[I
    add-int/lit8 v3, p1, 0x15

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 471
    .local v0, b:Landroid/widget/Button;
    aget v2, v1, p1

    .line 472
    .local v2, freq:I
    const-string v3, "FmReceiveView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liying updateSearchChannelButton()position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez v2, :cond_0

    .line 474
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v2, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v2, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
