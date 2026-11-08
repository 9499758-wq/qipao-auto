package kotlinx.coroutines.flow;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BroadcastChannel;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;

/* JADX INFO: compiled from: Channels.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005\u001a/\u0010\u0006\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u001a9\u0010\u000b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a&\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u001a\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"asFlow", "Lkotlinx/coroutines/flow/Flow;", "T", "Lkotlinx/coroutines/channels/BroadcastChannel;", "consumeAsFlow", "Lkotlinx/coroutines/channels/ReceiveChannel;", "emitAll", "", "Lkotlinx/coroutines/flow/FlowCollector;", "channel", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitAllImpl", "consume", "", "emitAllImpl$FlowKt__ChannelsKt", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "produceIn", "scope", "Lkotlinx/coroutines/CoroutineScope;", "receiveAsFlow", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__ChannelsKt {
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, ReceiveChannel<? extends T> receiveChannel, Continuation<? super Unit> continuation) throws Throwable {
        Object objEmitAllImpl$FlowKt__ChannelsKt = emitAllImpl$FlowKt__ChannelsKt(flowCollector, receiveChannel, true, continuation);
        return objEmitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x0078 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084 A[Catch: all -> 0x00ae, TRY_LEAVE, TryCatch #3 {all -> 0x00ae, blocks: (B:29:0x007e, B:31:0x0084, B:38:0x0096, B:39:0x0097), top: B:58:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:33:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x008d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097 A[Catch: all -> 0x00ae, TRY_LEAVE, TryCatch #3 {all -> 0x00ae, blocks: (B:29:0x007e, B:31:0x0084, B:38:0x0096, B:39:0x0097), top: B:58:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00aa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00ab -> B:23:0x0066). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <T> java.lang.Object emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector<? super T> r7, kotlinx.coroutines.channels.ReceiveChannel<? extends T> r8, boolean r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L14
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            switch(r2) {
                case 0: goto L5a;
                case 1: goto L3f;
                case 2: goto L2c;
                default: goto L24;
            }
        L24:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L2c:
            boolean r7 = r0.Z$0
            r8 = 0
            java.lang.Object r9 = r0.L$1
            kotlinx.coroutines.channels.ReceiveChannel r9 = (kotlinx.coroutines.channels.ReceiveChannel) r9
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3c
            goto Lad
        L3c:
            r1 = move-exception
            goto Lb1
        L3f:
            r7 = 0
            boolean r8 = r0.Z$0
            java.lang.Object r9 = r0.L$1
            kotlinx.coroutines.channels.ReceiveChannel r9 = (kotlinx.coroutines.channels.ReceiveChannel) r9
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
            r3 = 0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L56
            r4 = r10
            kotlinx.coroutines.channels.ChannelResult r4 = (kotlinx.coroutines.channels.ChannelResult) r4     // Catch: java.lang.Throwable -> L56
            java.lang.Object r4 = r4.getHolder()     // Catch: java.lang.Throwable -> L56
            goto L7d
        L56:
            r1 = move-exception
            r7 = r8
            r8 = r3
            goto Lb1
        L5a:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.FlowKt.ensureActive(r7)
            r2 = 0
            r6 = r2
            r2 = r7
            r7 = r9
            r9 = r8
            r8 = r6
        L66:
            r3 = 0
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L3c
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L3c
            r0.Z$0 = r7     // Catch: java.lang.Throwable -> L3c
            r4 = 1
            r0.label = r4     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r4 = r9.mo1643receiveCatchingJP2dKIU(r0)     // Catch: java.lang.Throwable -> L3c
            if (r4 != r1) goto L79
            return r1
        L79:
            r6 = r8
            r8 = r7
            r7 = r3
            r3 = r6
        L7d:
            boolean r7 = kotlinx.coroutines.channels.ChannelResult.m1658isClosedimpl(r4)     // Catch: java.lang.Throwable -> Lae
            if (r7 == 0) goto L97
            java.lang.Throwable r7 = kotlinx.coroutines.channels.ChannelResult.m1654exceptionOrNullimpl(r4)     // Catch: java.lang.Throwable -> Lae
            if (r7 != 0) goto L94
        L8b:
            if (r8 == 0) goto L90
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r9, r3)
        L90:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L94:
            r1 = 0
            throw r7     // Catch: java.lang.Throwable -> Lae
        L97:
            java.lang.Object r7 = kotlinx.coroutines.channels.ChannelResult.m1656getOrThrowimpl(r4)     // Catch: java.lang.Throwable -> Lae
            r0.L$0 = r2     // Catch: java.lang.Throwable -> Lae
            r0.L$1 = r9     // Catch: java.lang.Throwable -> Lae
            r0.Z$0 = r8     // Catch: java.lang.Throwable -> Lae
            r5 = 2
            r0.label = r5     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r7 = r2.emit(r7, r0)     // Catch: java.lang.Throwable -> Lae
            if (r7 != r1) goto Lab
            return r1
        Lab:
            r7 = r8
            r8 = r3
        Lad:
            goto L66
        Lae:
            r1 = move-exception
            r7 = r8
            r8 = r3
        Lb1:
            r8 = r1
            throw r1     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r1 = move-exception
            if (r7 == 0) goto Lba
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r9, r8)
        Lba:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.ReceiveChannel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <T> Flow<T> receiveAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, false, null, 0, null, 28, null);
    }

    public static final <T> Flow<T> consumeAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, true, null, 0, null, 28, null);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "'BroadcastChannel' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    public static final <T> Flow<T> asFlow(final BroadcastChannel<T> broadcastChannel) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
                Object objEmitAll = FlowKt.emitAll(flowCollector, broadcastChannel.openSubscription(), continuation);
                return objEmitAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmitAll : Unit.INSTANCE;
            }
        };
    }

    public static final <T> ReceiveChannel<T> produceIn(Flow<? extends T> flow, CoroutineScope scope) {
        return ChannelFlowKt.asChannelFlow(flow).produceImpl(scope);
    }
}
