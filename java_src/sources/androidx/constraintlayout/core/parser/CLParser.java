package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes.dex */
public class CLParser {
    static boolean DEBUG = false;
    private boolean hasComment = false;
    private int lineNumber;
    private String mContent;

    enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public static CLObject parse(String string) throws CLParsingException {
        return new CLParser(string).parse();
    }

    public CLParser(String content) {
        this.mContent = content;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0060  */
    /* JADX WARN: Code duplicated, block: B:28:0x0069  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0098  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:80:0x014d  */
    /* JADX WARN: Code duplicated, block: B:82:0x015b  */
    public CLObject parse() throws CLParsingException {
        int i;
        char ck;
        CLToken token;
        char[] content = this.mContent.toCharArray();
        int length = content.length;
        int i2 = 1;
        this.lineNumber = 1;
        int startIndex = -1;
        for (int i3 = 0; i3 < length; i3++) {
            char c = content[i3];
            if (c == '{') {
                startIndex = i3;
                break;
            }
            if (c == '\n') {
                this.lineNumber++;
            }
        }
        if (startIndex == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject root = CLObject.allocate(content);
        root.setLine(this.lineNumber);
        root.setStart(startIndex);
        CLElement currentElement = root;
        int i4 = startIndex + 1;
        while (true) {
            if (i4 >= length) {
                i = 1;
                break;
            }
            char c2 = content[i4];
            if (c2 == '\n') {
                this.lineNumber += i2;
            }
            if (this.hasComment) {
                if (c2 == '\n') {
                    this.hasComment = false;
                    if (currentElement == null) {
                        i = 1;
                        break;
                    }
                    if (currentElement.isDone()) {
                        currentElement = getNextJsonElement(i4, c2, currentElement, content);
                        startIndex = startIndex;
                    } else if (currentElement instanceof CLObject) {
                        if (c2 == '}') {
                            currentElement.setEnd(i4 - 1);
                            startIndex = startIndex;
                        } else {
                            currentElement = getNextJsonElement(i4, c2, currentElement, content);
                            startIndex = startIndex;
                        }
                    } else if (currentElement instanceof CLArray) {
                        if (c2 == ']') {
                            currentElement.setEnd(i4 - 1);
                            startIndex = startIndex;
                        } else {
                            currentElement = getNextJsonElement(i4, c2, currentElement, content);
                            startIndex = startIndex;
                        }
                    } else if (currentElement instanceof CLString) {
                        if (content[(int) currentElement.start] == c2) {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i4 - 1);
                        }
                        startIndex = startIndex;
                    } else {
                        if (currentElement instanceof CLToken) {
                            token = (CLToken) currentElement;
                            if (!token.validate(c2, i4)) {
                                throw new CLParsingException("parsing incorrect token " + token.content() + " at line " + this.lineNumber, token);
                            }
                        }
                        if (!(currentElement instanceof CLKey)) {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i4 - 1);
                        } else {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i4 - 1);
                        }
                        if (!currentElement.isDone()) {
                            currentElement.setEnd(i4 - 1);
                            if (c2 != '}') {
                                currentElement = currentElement.getContainer();
                                currentElement.setEnd(i4 - 1);
                                if (currentElement instanceof CLKey) {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i4 - 1);
                                }
                            } else {
                                currentElement = currentElement.getContainer();
                                currentElement.setEnd(i4 - 1);
                                if (currentElement instanceof CLKey) {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i4 - 1);
                                }
                            }
                        }
                    }
                    if (!currentElement.isDone()) {
                    }
                } else {
                    startIndex = startIndex;
                }
            } else {
                if (currentElement == null) {
                    i = 1;
                    break;
                }
                if (currentElement.isDone()) {
                    currentElement = getNextJsonElement(i4, c2, currentElement, content);
                    startIndex = startIndex;
                } else if (currentElement instanceof CLObject) {
                    if (c2 == '}') {
                        currentElement.setEnd(i4 - 1);
                        startIndex = startIndex;
                    } else {
                        currentElement = getNextJsonElement(i4, c2, currentElement, content);
                        startIndex = startIndex;
                    }
                } else if (currentElement instanceof CLArray) {
                    if (c2 == ']') {
                        currentElement.setEnd(i4 - 1);
                        startIndex = startIndex;
                    } else {
                        currentElement = getNextJsonElement(i4, c2, currentElement, content);
                        startIndex = startIndex;
                    }
                } else if (currentElement instanceof CLString) {
                    if (content[(int) currentElement.start] == c2) {
                        currentElement.setStart(currentElement.start + 1);
                        currentElement.setEnd(i4 - 1);
                    }
                    startIndex = startIndex;
                } else {
                    if (currentElement instanceof CLToken) {
                        token = (CLToken) currentElement;
                        if (!token.validate(c2, i4)) {
                            throw new CLParsingException("parsing incorrect token " + token.content() + " at line " + this.lineNumber, token);
                        }
                    }
                    if ((!(currentElement instanceof CLKey) || (currentElement instanceof CLString)) && (((ck = content[(int) currentElement.start]) == '\'' || ck == '\"') && ck == c2)) {
                        currentElement.setStart(currentElement.start + 1);
                        currentElement.setEnd(i4 - 1);
                    }
                    if (!currentElement.isDone() && (c2 == '}' || c2 == ']' || c2 == ',' || c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n' || c2 == ':')) {
                        currentElement.setEnd(i4 - 1);
                        if (c2 != '}' || c2 == ']') {
                            currentElement = currentElement.getContainer();
                            currentElement.setEnd(i4 - 1);
                            if (currentElement instanceof CLKey) {
                                currentElement = currentElement.getContainer();
                                currentElement.setEnd(i4 - 1);
                            }
                        }
                    }
                }
                if (!currentElement.isDone() && (!(currentElement instanceof CLKey) || ((CLKey) currentElement).mElements.size() > 0)) {
                    currentElement = currentElement.getContainer();
                }
            }
            i4++;
            startIndex = startIndex;
            i2 = 1;
        }
        while (currentElement != null && !currentElement.isDone()) {
            if (currentElement instanceof CLString) {
                currentElement.setStart(((int) currentElement.start) + i);
            }
            currentElement.setEnd(length - 1);
            currentElement = currentElement.getContainer();
        }
        if (DEBUG) {
            System.out.println("Root: " + root.toJSON());
        }
        return root;
    }

    private CLElement getNextJsonElement(int position, char c, CLElement currentElement, char[] content) throws CLParsingException {
        CLElement currentElement2;
        switch (c) {
            case '\t':
            case '\n':
            case '\r':
            case ' ':
            case ',':
            case ':':
                currentElement2 = currentElement;
                break;
            case '\"':
            case '\'':
                return currentElement instanceof CLObject ? createElement(currentElement, position, TYPE.KEY, true, content) : createElement(currentElement, position, TYPE.STRING, true, content);
            case '+':
            case '-':
            case '.':
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
            case '2':
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_MARGIN_BASELINE /* 54 */:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
            case '8':
            case '9':
                return createElement(currentElement, position, TYPE.NUMBER, true, content);
            case '/':
                currentElement2 = currentElement;
                if (position + 1 < content.length && content[position + 1] == '/') {
                    this.hasComment = true;
                }
                break;
            case '[':
                return createElement(currentElement, position, TYPE.ARRAY, true, content);
            case ']':
            case '}':
                currentElement.setEnd(position - 1);
                CLElement currentElement3 = currentElement.getContainer();
                currentElement3.setEnd(position);
                return currentElement3;
            case '{':
                return createElement(currentElement, position, TYPE.OBJECT, true, content);
            default:
                if (!(currentElement instanceof CLContainer) || (currentElement instanceof CLObject)) {
                    return createElement(currentElement, position, TYPE.KEY, true, content);
                }
                CLElement currentElement4 = createElement(currentElement, position, TYPE.TOKEN, true, content);
                CLToken token = (CLToken) currentElement4;
                if (!token.validate(c, position)) {
                    throw new CLParsingException("incorrect token <" + c + "> at line " + this.lineNumber, token);
                }
                return currentElement4;
        }
        return currentElement2;
    }

    private CLElement createElement(CLElement currentElement, int position, TYPE type, boolean applyStart, char[] content) {
        CLElement newElement = null;
        if (DEBUG) {
            System.out.println("CREATE " + type + " at " + content[position]);
        }
        switch (type) {
            case OBJECT:
                newElement = CLObject.allocate(content);
                position++;
                break;
            case ARRAY:
                newElement = CLArray.allocate(content);
                position++;
                break;
            case STRING:
                newElement = CLString.allocate(content);
                break;
            case NUMBER:
                newElement = CLNumber.allocate(content);
                break;
            case KEY:
                newElement = CLKey.allocate(content);
                break;
            case TOKEN:
                newElement = CLToken.allocate(content);
                break;
        }
        if (newElement == null) {
            return null;
        }
        newElement.setLine(this.lineNumber);
        if (applyStart) {
            newElement.setStart(position);
        }
        if (currentElement instanceof CLContainer) {
            CLContainer container = (CLContainer) currentElement;
            newElement.setContainer(container);
        }
        return newElement;
    }
}
