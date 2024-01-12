type ObjectPropertyString<T> = {
    [PropertyKey in keyof T]?: string;
};

export default ObjectPropertyString;
