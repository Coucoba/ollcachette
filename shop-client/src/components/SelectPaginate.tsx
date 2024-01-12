/* eslint-disable @typescript-eslint/no-explicit-any */
import React from 'react';
import { AsyncPaginate } from 'react-select-async-paginate';
import { components, StylesConfig } from 'react-select';
import { ResponseArray } from '../types';

type Props = {
    value: any;
    onChange: (option: any) => void;
    placeholder: string;
    refetch: (page: number, size: number) => Promise<ResponseArray<any>>;
    isMulti?: boolean;
    defaultLabel: string;
};

const styles: StylesConfig = {
    control: (base, { isFocused }) => ({
        ...base,
        backgroundColor: 'white',
        borderColor: isFocused ? '#607d8b' : '#c4c4c4',
        boxShadow: isFocused ? '0 0 0 1px #607d8b' : 'none',
        '&:hover': {
            borderColor: isFocused ? '#607d8b' : '#c4c4c4',
        },
        height: '56px',
    }),
    option: (base, { isSelected, isFocused }) => ({
        ...base,
        backgroundColor: isSelected ? '#607d8b' : isFocused ? '#cfd8dc' : 'white',
    }),
    valueContainer: (base) => ({
        ...base,
        overflow: 'visible',
    }),
    placeholder: (base, { hasValue, selectProps }) => ({
        ...base,
        position: 'absolute',
        top: hasValue || selectProps.inputValue ? -25 : 0,
        fontSize: (hasValue || selectProps.inputValue) && 13,
        transition: '0.2s ease all',
        backgroundColor: 'white',
        padding: hasValue || selectProps.inputValue ? '0 4px' : '0',
    }),
};

const CustomValueContainer = ({ children, ...props }: any) => {
    const { ValueContainer, Placeholder } = components;
    return (
        <ValueContainer {...props}>
            <Placeholder {...props} isFocused={props.isFocused}>
                {props.selectProps.placeholder}
            </Placeholder>
            {React.Children.map(children, (child) => (child && child.type !== Placeholder ? child : null))}
        </ValueContainer>
    );
};

const SelectPaginate = ({ value, onChange, placeholder, refetch, isMulti = false, defaultLabel }: Props) => {
    const loadOptions = async (searchQuery: string, options: unknown, { page }: any) => {
        const response = await refetch(page, 10);
        return {
            options:
                page === 0 && !isMulti
                    ? [{ id: '0', name: defaultLabel }].concat(response.data.content)
                    : response.data.content,
            hasMore: response.data.totalPages > page,
            additional: {
                page: page + 1,
            },
        };
    };

    return (
        <AsyncPaginate
            isMulti={isMulti}
            value={value}
            loadOptions={loadOptions}
            getOptionValue={(option) => option.name}
            getOptionLabel={(option) => option.name}
            onChange={onChange}
            isSearchable={false}
            placeholder={placeholder}
            additional={{
                page: 0,
            }}
            components={{
                IndicatorSeparator: () => null,
                ValueContainer: CustomValueContainer,
            }}
            styles={styles}
        />
    );
};

export default SelectPaginate;
